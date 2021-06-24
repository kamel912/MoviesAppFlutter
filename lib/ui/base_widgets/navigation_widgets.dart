import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/di/providers/navigation_provider.dart';
import 'package:tester_app/localization/l10n.dart';
import 'package:tester_app/ui/base_widgets/base_constants/base_border.dart';

class MoviesDBBottomNavigationBar extends StatefulWidget {
  @override
  _MoviesDBBottomNavigationBarState createState() => _MoviesDBBottomNavigationBarState();
}

class _MoviesDBBottomNavigationBarState extends State<MoviesDBBottomNavigationBar> {
  @override
  Widget build(BuildContext context) => StateNotifierBuilder<int>(
        stateNotifier: context.watch<NavigationProvider>(),
        builder: (context, currentPage, child) => ClipRRect(
          borderRadius: BaseBorderRadiusDirectional.top().resolveSuper(context),
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            unselectedItemColor: Colors.white60,
            type: BottomNavigationBarType.fixed,
            elevation: 25.0,
            backgroundColor: Theme.of(context).primaryColor,
            items: <BottomNavigationBarItem>[
              BottomBarItem(
                iconData: Icons.person_outline,
                activeIconData: Icons.person,
                label: AppLocalizations.of(context).profile,
              ),
              BottomBarItem(
                iconData: Icons.favorite_border,
                activeIconData: Icons.favorite,
                label: AppLocalizations.of(context).favorites,
              ),
              BottomBarItem(
                iconData: Icons.home_outlined,
                activeIconData: Icons.home,
                label: AppLocalizations.of(context).home,
              ),
              BottomBarItem(
                iconData: Icons.search,
                activeIconData: Icons.search,
                label: AppLocalizations.of(context).search,
              ),
              BottomBarItem(
                iconData: Icons.settings_outlined,
                activeIconData: Icons.settings,
                label: AppLocalizations.of(context).search,
              ),
            ],
            currentIndex: currentPage,
            fixedColor: Theme.of(context).accentColor,
            onTap: (index) => context.read<NavigationProvider>().currentPage = index,
          ),
        ),
      );
}

class BottomBarItem extends BottomNavigationBarItem {
  final IconData iconData;
  final IconData activeIconData;
  final String label;

  BottomBarItem({
    required this.iconData,
    required this.activeIconData,
    required this.label,
  }) : super(
          icon: Icon(iconData),
          activeIcon: Icon(activeIconData),
          label: '$label',
        );
}
