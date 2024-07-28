import 'package:for_later_app/app/common/router/router_config.dart';
import 'package:for_later_app/app/common/router/routes.dart';

abstract class AppNavigator {
  Future<void> push({
    required Routes route,
    Map<String, String>? pathParameters,
  });
}

class AppNavigatorImpl implements AppNavigator {
  AppNavigatorImpl(this.navigator);
  final AppRouterConfig navigator;

  @override
  Future<void> push({
    required Routes route,
    Map<String, String>? pathParameters,
  }) async =>
      navigator.pushNamed(
        route.name,
        pathParameters: pathParameters ?? {},
      );
}
