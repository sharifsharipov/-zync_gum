import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:zync_gum/router/routes.dart' as routes;
import 'package:path_provider/path_provider.dart';
import 'package:zync_gum/firebase_options.dart';
import 'package:permission_handler/permission_handler.dart';

late AndroidNotificationChannel _notificationChannel;
late FlutterLocalNotificationsPlugin _notificationPlugin;
const _initializationSettings = InitializationSettings(
  android: AndroidInitializationSettings('@mipmap/ic_launcher'),
  iOS: DarwinInitializationSettings(),
);

Future<String> getFcmToken() async {
  String fcm = '';

  try {
    if (Platform.isIOS || Platform.isMacOS) {
      await FirebaseMessaging.instance.getAPNSToken();
    }
    fcm = await FirebaseMessaging.instance.getToken() ?? '';
  } on Exception catch (e, s) {
    log('fcm: $e $s');
  }
  return fcm;
}

Future<void> initializeNotification() async {
  await setupLocalNotifications();

  /// foreground notification receive
  if (Platform.isAndroid) {
    FirebaseMessaging.onMessage.listen((message) {
      debugPrint('debug_notification: foreground notification received');
      showLocalNotification(message);
    });
  }

  /// show notification in background/terminated
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
}

Future<void> setupLocalNotifications() async {
  if (Platform.isIOS) {
    await FirebaseMessaging.instance.requestPermission(announcement: true);
  }
  if (Platform.isAndroid) {
    await Permission.notification.request();
  }
  _notificationChannel = const AndroidNotificationChannel(
    'General', // id
    'General', // title
    description: 'This channel is used for important notifications.',
    // description
    importance: Importance.high,
  );

  _notificationPlugin = FlutterLocalNotificationsPlugin();

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  await _notificationPlugin
      .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin
      >()
      ?.createNotificationChannel(_notificationChannel);
}

Future<void> showLocalNotification(RemoteMessage message) async {
  final data = message.data;

  /// set image if exists
  final imageUrl = data['image'];
  BigPictureStyleInformation? image;
  String? largeIconPath;
  if (imageUrl != null) {
    List<int>? imageBytes;

    /// get image
    try {
      final request = await HttpClient().getUrl(Uri.parse(imageUrl));
      final response = await request.close();
      if (response.statusCode == 200) {
        imageBytes = await consolidateHttpClientResponseBytes(response);
      }
    } on Exception catch (e) {
      debugPrint('debug_notification: image load error $e');
    }
    if (imageBytes != null) {
      /// save image locally to show largeIcon
      final directory = await getApplicationDocumentsDirectory();
      largeIconPath = '${directory.path}/largeIcon';
      final largeIconFile = File(largeIconPath);
      await largeIconFile.writeAsBytes(imageBytes);

      /// set image
      final base64Image = base64Encode(imageBytes);
      image = BigPictureStyleInformation(
        ByteArrayAndroidBitmap.fromBase64String(base64Image),
        hideExpandedLargeIcon: true,
      );
    }
  }
  await _notificationPlugin.show(
    data.hashCode,
    data['title'] ?? '',
    data['body'] ?? '',
    NotificationDetails(
      android: AndroidNotificationDetails(
        _notificationChannel.id,
        _notificationChannel.name,
        channelDescription: _notificationChannel.description,
        icon: '@mipmap/ic_launcher',
        priority: Priority.high,
        importance: Importance.max,
        visibility: NotificationVisibility.public,
        largeIcon: (largeIconPath != null)
            ? FilePathAndroidBitmap(largeIconPath)
            : null,
        styleInformation: image,
        actions: [
          if ((data['action_text'] ?? '').isNotEmpty &&
              (data['action_route'] ?? '').isNotEmpty)
            AndroidNotificationAction(
              'action',
              data['action_text'] ?? '',
              showsUserInterface: true,
            ),
        ],
      ),
    ),
    payload: jsonEncode(data),
  );
}

Future<void> handleOnTapNotification() async {
  /// when message tapped and app is in foreground
  if (Platform.isAndroid) {
    await _notificationPlugin.initialize(
      _initializationSettings,
      onDidReceiveNotificationResponse: onTapNotification,
      onDidReceiveBackgroundNotificationResponse: onTapNotification,
    );
  }

  /// when message tapped and app is in background
  FirebaseMessaging.onMessageOpenedApp.listen((message) async {
    debugPrint(
      'debug_notification: background message tapped ${routes.router.state.topRoute?.name} $message',
    );
    final String route = message.data['route'] ?? '';
    _navigateIfPossible(route);
  });

  /// when message tapped and app is in terminated
  final remoteMessage = await FirebaseMessaging.instance.getInitialMessage();
  final String route = remoteMessage?.data['route'] ?? '';
  debugPrint('debug_notification: initialMessage $remoteMessage');
  _navigateIfPossible(route);

  /// when local notification message tapped and app is in terminated
  final notification = await _notificationPlugin
      .getNotificationAppLaunchDetails();
  if (notification?.didNotificationLaunchApp == true) {
    final data = jsonDecode(notification?.notificationResponse?.payload ?? '');

    /// action route
    if ((notification?.notificationResponse?.actionId ?? '').isNotEmpty) {
      debugPrint('debug_notification: terminated action pressed');
      final String route = data['action_route'] ?? '';

      _navigateIfPossible(route);
    }
    /// notification route
    else {
      debugPrint('debug_notification: terminated notification pressed');
      final String route = data['route'] ?? '';

      _navigateIfPossible(route);
    }
  }
}

void _navigateIfPossible(String route) {
  final routeName = Uri.tryParse(route)?.pathSegments.lastOrNull;
  if (route.isEmpty || routeName == null) {
    return;
  }

  if (routes.router.state.topRoute?.name != '/$routeName') {
    routes.router.push(route);
  }
}

@pragma('vm:entry-point')
Future<void> backgroundHandler(RemoteMessage message) async {
  debugPrint('debug_notification: background notification received');
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

@pragma('vm:entry-point')
void onTapNotification(NotificationResponse response) {
  final data = jsonDecode(response.payload ?? '');
  if (response.notificationResponseType ==
      NotificationResponseType.selectedNotification) {
    debugPrint('debug_notification: foreground notification tapped');

    final String route = data['route'] ?? '';
    _navigateIfPossible(route);
  }
}
