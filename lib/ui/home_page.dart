import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/di/providers/navigation_provider.dart';
import 'package:tester_app/ui/base_widgets/base_app_page.dart';
import 'package:tester_app/ui/base_widgets/navigation_widgets.dart';
import 'package:tester_app/ui/home_page/account_screen/account_screen.dart';
import 'package:tester_app/ui/home_page/favorites_screen/favorites_screen.dart';
import 'package:tester_app/ui/home_page/home_screen.dart';
import 'package:tester_app/ui/home_page/search_screen/search_screen.dart';
import 'package:tester_app/ui/home_page/settings_screen/settings_screen.dart';

class HomePage extends BaseHookPage {
  bool firstBuild = true;

  @override
  Widget body(BuildContext context) {
    final _pageController = usePageController(
      initialPage: context.read<NavigationProvider>().currentPage,
    );

    return Scaffold(
      bottomNavigationBar: MoviesDBBottomNavigationBar(),
      extendBody: true,
      body: Container(
        child: StateNotifierBuilder<int>(
          stateNotifier: context.read<NavigationProvider>(),
          builder: (context, currentPage, child) {
            if (firstBuild)
              firstBuild = false;
            else
              _pageController.animateToPage(
                currentPage,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );

            return child;
          },
          child: PageView(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              AccountScreen(),
              FavoritesScreen(),
              HomeScreen(),
              SearchScreen(),
              SettingsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
