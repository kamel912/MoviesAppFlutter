import 'package:flutter/material.dart';
import 'package:tester_app/l10n/app_localizations.dart';
import 'package:tester_app/ui/base_widgets/base_app_page.dart';

class AccountScreen extends BaseAppPage {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends BaseAppPageState<AccountScreen> {
  @override
  Widget get body => Container();

  @override
  PreferredSizeWidget get appBar => BaseAppBar(
        title: Text(AppLocalizations.of(context).account),
      );
}
