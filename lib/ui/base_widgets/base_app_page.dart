import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

export 'base_app_bar.dart';

abstract class BaseAppPage extends StatefulWidget {
  const BaseAppPage({Key? key}) : super(key: key);
}

abstract class BaseAppPageState<Page extends BaseAppPage> extends State<Page> {
  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        key: scaffoldGlobalKey,
        body: body,
        appBar: appBar,
        drawer: drawer,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
      );

  PreferredSizeWidget? get appBar => null;

  Widget get floatingActionButton => Container();

  Widget? get drawer => null;

  Widget? get bottomNavigationBar => null;

  Widget get body;

  String get screenName => '';

  GlobalKey<ScaffoldState> get scaffoldGlobalKey => GlobalKey();
}

abstract class BaseHookPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: scaffoldGlobalKey,
      body: Column(
        children: [
          appBar(context) ?? Container(),
          Expanded(
            child: body(context),
          ),
        ],
      ),
      // appBar: appBar,
      drawer: drawer(context),
      bottomNavigationBar: bottomNavigationBar(context),
      floatingActionButton: floatingActionButton(context),
    );
  }

  Widget? appBar(BuildContext context) => null;

  Widget floatingActionButton(BuildContext context) => Container();

  Widget? drawer(BuildContext context) => null;

  Widget? bottomNavigationBar(BuildContext context) => null;

  Widget body(BuildContext context);

  String get screenName => '';

  GlobalKey<ScaffoldState> get scaffoldGlobalKey => GlobalKey();
}

abstract class BaseStatelessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        key: scaffoldGlobalKey,
        body: Column(
          children: [
            appBar(context) ?? Container(),
            Expanded(
              child: body(context),
            ),
          ],
        ),
        // appBar: appBar,
        drawer: drawer(context),
        bottomNavigationBar: bottomNavigationBar(context),
        floatingActionButton: floatingActionButton(context),
      ),
    );
  }

  Widget? appBar(context) => null;

  Widget floatingActionButton(BuildContext context) => Container();

  Widget? drawer(BuildContext context) => null;

  Widget? bottomNavigationBar(BuildContext context) => null;

  Widget body(BuildContext context);

  String get screenName => '';

  GlobalKey<ScaffoldState> get scaffoldGlobalKey => GlobalKey();
}
