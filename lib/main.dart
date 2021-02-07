import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/di/main_providers.dart';
import 'package:tester_app/l10n/app_localizations.dart';
import 'package:tester_app/localization/app_language.dart';
import 'package:tester_app/ui/router/router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providers,
      child: ProvidersInitializer(),
    ),
  );
}

class ProvidersInitializer extends StatefulWidget {
  @override
  _ProvidersInitializerState createState() => _ProvidersInitializerState();
}

class _ProvidersInitializerState extends State<ProvidersInitializer> {
  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          StateNotifierProvider<LanguageProvider, Locale>(
            create: (context) => LanguageProvider(),
          ),
        ],
        child: MoviesDBApp(),
      );
}

class MoviesDBApp extends StatelessWidget {
  final MoviesDBRouterDelegate _routerDelegate = MoviesDBRouterDelegate();

  final MoviesDBRouteInformationParser _routeInformationParser = MoviesDBRouteInformationParser();

  MoviesDBApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StateNotifierBuilder<Locale>(
        stateNotifier: context.read<LanguageProvider>(),
        builder: (context, locale, child) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          locale: locale,
          darkTheme: ThemeData.dark().copyWith(
            accentColor: Colors.pinkAccent,
            indicatorColor: Colors.pinkAccent,
            textTheme: TextTheme(
              headline1: TextStyle(
                color: Colors.white,
              ),
              bodyText1: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          themeMode: ThemeMode.dark,
          routerDelegate: _routerDelegate,
          routeInformationParser: _routeInformationParser,
        ),
      );
}
