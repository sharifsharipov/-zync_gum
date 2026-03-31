part of 'utils.dart';

final String defaultSystemLocale = Platform.localeName.split('_').first;

String get defaultLocale => switch (defaultSystemLocale) {
  'ru' => 'ru',
  'uz' => 'uz',
  'en' => 'en',
  _ => 'uz',
};

String get defaultTheme =>
    SchedulerBinding.instance.platformDispatcher.platformBrightness.name;

String formatSmartDate(DateTime? date) {
  if (date == null) return '';
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final target = DateTime(date.year, date.month, date.day);

  final difference = target.difference(today).inDays;

  String dayText;
  if (difference == 0) {
    dayText = localizationWithoutContext.today;
  } else if (difference == 1) {
    dayText = localizationWithoutContext.tomorrow;
  } else if (difference == -1) {
    dayText = localizationWithoutContext.yesterday;
  } else {
    dayText = DateFormat('MMMM d').format(date);
  }

  final timeText = DateFormat('hh:mm a').format(date);

  return '$dayText, $timeText';
}

List<String> get daysOfWeekWords {
  final now = DateTime.now();

  final monday = now.subtract(Duration(days: now.weekday - 1));

  return List.generate(7, (index) {
    final day = monday.add(Duration(days: index));
    return DateFormat('EEEE', localSource.locale).format(day);
  });
}

String? parseYoutubeVideoId(String url) {
  final Uri? uri = Uri.tryParse(url);
  if (uri == null) return null;

  if (uri.host.contains('youtu.be')) {
    return uri.pathSegments.isNotEmpty ? uri.pathSegments.first : null;
  }

  if (uri.queryParameters.containsKey('v')) {
    return uri.queryParameters['v'];
  }

  final segments = uri.pathSegments;
  if (segments.isNotEmpty) {
    final index = segments.indexWhere(
          (e) => e == 'embed' || e == 'shorts',
    );
    if (index != -1 && segments.length > index + 1) {
      return segments[index + 1];
    }
  }

  return null;
}
