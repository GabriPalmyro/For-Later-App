import 'package:flutter/material.dart';
import 'package:for_later_app/app/common/router/app_navigator.dart';
import 'package:for_later_app/app/common/router/routes.dart';
import 'package:for_later_app/app/common/widgets/bottom_navigation_bar.dart';
import 'package:for_later_app/app/features/home/presentation/provider/shares_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({required this.appNavigator, super.key});

  final AppNavigator appNavigator;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final shareProvider = context.read<SharesProvider>();
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Stack(
        children: [
          Center(
            child: IconButton(
              onPressed: () {
                widget.appNavigator.push(
                  route: Routes.newItem,
                  queryParameters: {
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
