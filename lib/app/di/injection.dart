import 'package:for_later_app/app/common/router/app_navigator.dart';
import 'package:for_later_app/app/common/router/page_route.dart';
import 'package:for_later_app/app/common/router/router_config.dart';
import 'package:for_later_app/app/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(initializerName: r'$initAppGetIt')
Future<void> configureAppDependencies(
  GetIt getIt,
  List<PageRoute> routes,
) async {
  getIt.$initAppGetIt();

  getIt.registerLazySingleton<AppRouterConfig>(
    () => AppRouterConfig(
      routes: routes,
    ),
  );

  getIt.registerLazySingleton<AppNavigator>(
    () => AppNavigatorImpl(
      getIt.get<AppRouterConfig>(),
    ),
  );
}
