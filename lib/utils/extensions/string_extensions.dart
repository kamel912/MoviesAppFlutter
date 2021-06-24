import 'package:tester_app/localization/l10n.dart';

extension MoviesDBStringFormat on String {
  String localize() {
    return AppLocalizations.current.translate(this);
  }
}

extension StringLocalizer on AppLocalizations {
  String translate(String key) {
    switch (key) {
      case 'favorites':
        return favorites;
      default:
        return key;
    }
  }
}
