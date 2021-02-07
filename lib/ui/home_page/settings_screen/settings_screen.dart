import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/l10n/app_localizations.dart';
import 'package:tester_app/localization/app_language.dart';
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
  Widget get body => Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Language'),
              TransparentDivider(height: 2.0),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BaseBorderRadiusDirectional.all(),
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BaseBorderRadiusDirectional.all(),
                      ),
                      subtitle: Text('EN'),
                      title: Text('Select Language'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BaseBorderRadiusDirectional.all(),
                            ),
                            title: Text('Select Language'),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BaseBorderRadiusDirectional.all(),
                      ),
                      subtitle: Text('EN'),
                      title: Text('Select Language'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BaseBorderRadiusDirectional.top(),
                          ),
                          builder: (context) => Container(
                            child: StateNotifierBuilder<Locale>(
                              stateNotifier: context.read<LanguageProvider>(),
                              builder: (BuildContext context, localeState, Widget child) {
                                List<Locale> locales = List.from(AppLocalizations.supportedLocales);
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
                                        context.read<LanguageProvider>().changeLocale(newLocale);
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
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
