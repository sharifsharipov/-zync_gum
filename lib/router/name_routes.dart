part of 'routes.dart';

sealed class Routes {
  Routes._();

  ///[splash]
  static const String splash = '/';

  ///[auth]
  static const String auth = '/auth';
  static const String login = '/login';

  ///[home]
  static const String home = '/home';

  ///[profile]
  static const String profile = '/profile';
  static const String language = '/language';
  static const String theme = '/theme';

}
