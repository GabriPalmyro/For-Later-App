import 'package:for_later_app/app/common/router/app_navigator.dart';
import 'package:for_later_app/app/common/router/page_route.dart';
import 'package:for_later_app/app/common/router/routes.dart';
import 'package:for_later_app/app/features/home/presentation/home_page.dart';
import 'package:for_later_app/app/features/new_item/presentation/new_item_page.dart';
import 'package:get_it/get_it.dart';

final routes = [
  PageRoute(
    route: Routes.home,
    builder: (context, state) => HomePage(
      appNavigator: GetIt.I.get<AppNavigator>(),
    ),
  ),
  PageRoute(
    route: Routes.newItem,
    builder: (context, state) {
      final url = state.queryParameters['url'];
      return NewItemPage(url: url);
    },
  ),
];
