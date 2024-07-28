import 'package:for_later_app/app/common/link_embeder/service/link_embeder_service.dart';
import 'package:for_later_app/app/common/router/app_navigator.dart';
import 'package:for_later_app/app/common/router/page_route.dart';
import 'package:for_later_app/app/common/router/routes.dart';
import 'package:for_later_app/app/features/home/presentation/home_page.dart';
import 'package:for_later_app/app/features/new_item/presentation/new_item_page.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

final routes = [
  PageRoute(
    route: Routes.home,
    builder: (context, state) => MultiProvider(
      providers: [
        Provider<LinkEmbederService>(
          create: (_) => GetIt.I.get<LinkEmbederService>()..initListenToSharedLinks(),
        ),
      ],
      child: HomePage(
        appNavigator: GetIt.I.get<AppNavigator>(),
      ),
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
