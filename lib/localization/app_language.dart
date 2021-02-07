import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tester_app/l10n/app_localizations.dart';

class LanguageProvider extends StateNotifier<Locale> with LocatorMixin {
  LanguageProvider() : super(Locale('en')) {
    loadLocale();
  }

  static const String LOCALE_KEY = 'localeKey';
  static const String COUNTRY_CODE_KEY = 'countryCodeKey';

  loadLocale() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.containsKey(LOCALE_KEY)) {
      updateLocale(Locale(sharedPreferences.getString(LOCALE_KEY)));
    }
  }

  changeLocale(Locale locale) async {
    read<SharedPreferences>().setString(LOCALE_KEY, locale.languageCode);
    updateLocale(locale);
  }

  updateLocale(Locale locale) {
    AppLocalizations.delegate.load(locale);
    state = locale;
  }
}
