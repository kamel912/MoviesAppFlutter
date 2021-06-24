import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/di/main_providers.dart';
import 'package:tester_app/localization/app_language.dart';
import 'package:tester_app/localization/l10n.dart';
import 'package:tester_app/ui/router/router.dart';
import 'package:tester_app/utils/hive_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveHelper.init();
  runApp(
    ProvidersInitializer(),
  );
}

class ProvidersInitializer extends StatefulWidget {
  @override
  _ProvidersInitializerState createState() => _ProvidersInitializerState();
}

class _ProvidersInitializerState extends State<ProvidersInitializer> {
  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: providers,
        child: MoviesDBApp(),
      );
}

class MoviesDBApp extends StatelessWidget {
  final MoviesDBRouterDelegate _routerDelegate = MoviesDBRouterDelegate();

  final MoviesDBRouteInformationParser _routeInformationParser = MoviesDBRouteInformationParser();

  MoviesDBApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StateNotifierBuilder<Locale?>(
        stateNotifier: context.watch<LanguageProvider>(),
        builder: (context, locale, child) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          // title: AppLocalizations.current.appTitle,
          supportedLocales: AppLocalizations.delegate.supportedLocales,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          locale: locale,
          darkTheme: ThemeData.dark().copyWith(
            accentColor: Colors.pinkAccent,
            indicatorColor: Colors.pinkAccent,
          ),
          themeMode: ThemeMode.dark,
          routerDelegate: _routerDelegate,
          routeInformationParser: _routeInformationParser,
          theme: ThemeData(
            primaryColor: Colors.pinkAccent,
          ),
        ),
      );
}
