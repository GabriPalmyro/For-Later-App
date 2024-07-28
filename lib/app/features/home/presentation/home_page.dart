import 'package:flutter/material.dart';
import 'package:for_later_app/app/common/router/app_navigator.dart';
import 'package:for_later_app/app/common/router/routes.dart';
import 'package:for_later_app/app/common/widgets/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({required this.appNavigator, super.key});

  final AppNavigator appNavigator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Stack(
        children: [
          Center(
            child: IconButton(
              onPressed: () {
                appNavigator.push(
                  route: Routes.newItem,
                  pathParameters: {
                    'url': 'https://www.google.com',
                  },
                );
              },
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
