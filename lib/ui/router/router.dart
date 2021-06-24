import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/ui/details_page.dart';
import 'package:tester_app/ui/home_page.dart';
import 'package:tester_app/ui/router/route_path.dart';
import 'package:tester_app/ui/router/router_provider.dart';

class MoviesDBRouterDelegate extends RouterDelegate<RoutePath>
    with PopNavigatorRouterDelegateMixin<RoutePath>, ChangeNotifier {
  final HomePage _homePage = HomePage();

  MoviesDBRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>() {
    _routerProvider.addListener((state) => notifyListeners);
  }

  final RouterProvider _routerProvider = RouterProvider();

  @override
  void dispose() {
    _routerProvider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          StateNotifierProvider.value(value: _routerProvider),
        ],
        child: StateNotifierBuilder<RoutePath>(
          stateNotifier: _routerProvider,
          builder: (context, routePath, child) => Navigator(
            key: navigatorKey,
            onPopPage: _handlePopPage,
            pages: [
              MaterialPage(
                key: ValueKey('Home'),
                child: _homePage,
              ),
              if (routePath is DetailsRoutePath)
                MaterialPage(
                  key: ValueKey('Details'),
                  child: DetailsPage(),
                ),
            ],
          ),
        ),
      );

/*
  List<Page> get _pages {
    List<Page> pages = [
      MaterialPage(
        key: ValueKey('Home'),
        child: _homePage,
      ),
    ];

    _routerProvider.current.when(
      homeRoutePath: (_) => pages,
      detailsRoutePath: (_) => pages.add(
        MaterialPage(
          key: ValueKey('Details'),
          child: DetailsScreen(),
        ),
      ),
    );

    return pages;
  }
*/

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  bool _handlePopPage(Route<dynamic> route, dynamic result) {
    assert(_routerProvider.current is DetailsRoutePath);
    final bool didPop = route.didPop(result);
    _routerProvider.current = HomeRoutePath();
    return didPop;
  }

  @override
  Future<void> setNewRoutePath(RoutePath configuration) {
    _routerProvider.current = configuration;
    return SynchronousFuture<void>(null);
  }

  @override
  RoutePath get currentConfiguration => _routerProvider.current;
}

class MoviesDBRouteInformationParser extends RouteInformationParser<RoutePath> {
  @override
  Future<RoutePath> parseRouteInformation(RouteInformation routeInformation) {
    if (routeInformation.state is DetailsRoutePath) {
      return SynchronousFuture<DetailsRoutePath>(DetailsRoutePath());
    }

    return SynchronousFuture<HomeRoutePath>(HomeRoutePath());
  }

  @override
  RouteInformation restoreRouteInformation(RoutePath configuration) {
    return RouteInformation(location: configuration.location);
  }
}
