import 'package:flutter/material.dart';
import 'package:tester_app/l10n/app_localizations.dart';

extension MoviesDBStringFormat on String {
  String localize(BuildContext context) {
    return AppLocalizations.of(context).translate(this);
  }
}

extension StringLocalizer on AppLocalizations {
  String translate(String key) {
    switch (key) {
      case 'favorites':
        return favorites;
      default:
        return localeName;
    }
  }
}
