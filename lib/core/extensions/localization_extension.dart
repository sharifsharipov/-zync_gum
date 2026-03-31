import 'package:zync_gum/generated/l10n.dart';
import 'package:zync_gum/router/routes.dart' as routes;

S get localizationWithoutContext =>
    S.of(routes.rootNavigatorKey.currentContext!);
