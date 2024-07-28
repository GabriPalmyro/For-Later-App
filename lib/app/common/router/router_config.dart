
import 'package:flutter/widgets.dart' hide PageRoute;
import 'package:for_later_app/app/common/router/page_route.dart';
import 'package:for_later_app/app/common/router/routes.dart';
import 'package:for_later_app/app/common/router/widgets/not_found_page.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig extends GoRouter {
  AppRouterConfig({
    required this.routes,
  }) : 
        super(
          initialLocation: Routes.home.path,
          routes: routes
            .map<GoRoute>((PageRoute route) => route.toGoRoute())
            .toList(),
          errorBuilder: (context, state) => const NotFoundPage(),
          redirect: (BuildContext context, GoRouterState state) => null,
        );

  final List<PageRoute> routes;
}
