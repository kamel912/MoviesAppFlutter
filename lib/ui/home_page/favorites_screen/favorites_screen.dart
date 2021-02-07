import 'package:flutter/material.dart';
import 'package:tester_app/l10n/app_localizations.dart';
import 'package:tester_app/ui/base_widgets/base_app_page.dart';

class FavoritesScreen extends BaseAppPage {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends BaseAppPageState<FavoritesScreen> {
  @override
  Widget get body => Container();

  @override
  PreferredSizeWidget get appBar => BaseAppBar(
        title: Text(AppLocalizations.of(context).favorites),
      );
}
