import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/localization/app_language.dart';
import 'package:tester_app/localization/l10n.dart';
import 'package:tester_app/ui/base_widgets/base_app_page.dart';
import 'package:tester_app/ui/base_widgets/base_constants/base_border.dart';
import 'package:tester_app/ui/base_widgets/dividers.dart';
import 'package:tester_app/utils/movies_db_extensions.dart';

class SettingsScreen extends BaseAppPage {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends BaseAppPageState<SettingsScreen> {
  @override
  Widget get body => SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context).localization,
                  style: Theme.of(context).textTheme.headline5,
                ),
                TransparentDivider(height: 2.0),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BaseBorderRadiusDirectional.all(),
                  ),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BaseBorderRadiusDirectional.top(),
                        ),
                        subtitle: Text(
                          context.watch<Locale>().fullName,
                        ),
                        title: Text(
                          AppLocalizations.of(context).language,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BaseBorderRadiusDirectional.top(),
                            ),
                            builder: (context) => Container(
                              child: Consumer<Locale>(
                                builder: (context, localeState, child) {
                                  List<Locale> locales = List.from(AppLocalizations.delegate.supportedLocales);
                                  locales.removeWhere((locale) => locale.toString().contains('_'));
                                  print(locales);
                                  return ListView.builder(
                                    itemCount: locales.length + 1,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      if (index == 0) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            AppLocalizations.of(context).selectLanguage,
                                            style: Theme.of(context).textTheme.headline5,
                                          ),
                                        );
                                      }
                                      Locale locale = locales[index - 1];
                                      return RadioListTile<Locale>(
                                        value: locale,
                                        groupValue: localeState,
                                        onChanged: (newLocale) {
                                          context.read<LanguageProvider>().saveLocale(newLocale!);
                                        },
                                        title: Text(locale.fullName),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 1.0,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BaseBorderRadiusDirectional.bottom(),
                        ),
                        subtitle: Text('EN'),
                        title: Text(AppLocalizations.of(context).country),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
