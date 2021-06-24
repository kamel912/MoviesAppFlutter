import 'package:flutter/material.dart';
import 'package:tester_app/localization/l10n.dart';
import 'package:tester_app/ui/base_widgets/base_app_page.dart';

class ProfileScreen extends BaseAppPage {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends BaseAppPageState<ProfileScreen> {
  @override
  Widget get body => Container();

  @override
  PreferredSizeWidget get appBar => BaseAppBar(
        title: Text(AppLocalizations.of(context).profile),
      );
}
