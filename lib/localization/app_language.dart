import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tester_app/localization/l10n.dart';

final String localeKey = 'locale';

class LanguageProvider extends StateNotifier<Locale> with LocatorMixin {
  final Box<Locale> stateBox;

  LanguageProvider(this.stateBox)
      : super(
          stateBox.get(
                localeKey,
                defaultValue: Locale('en'),
              ) ??
              Locale('en'),
        );

  saveLocale(Locale locale) {
    stateBox.put(localeKey, locale);
    updateLocale(locale);
  }

  updateLocale(Locale locale) {
    AppLocalizations.delegate.load(locale);
    state = locale;
  }
}
