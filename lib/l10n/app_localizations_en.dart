
// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: unnecessary_brace_in_string_interps

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get account => 'Account';

  @override
  String get favorites => 'Favorites';

  @override
  String languages(String languageCode) {
    return '{language, select, en {English} ar {Arabic}}';
  }

  @override
  String get movies => 'Movies';

  @override
  String get tv => 'TV';

  @override
  String greeting(String userName) {
    return 'Hello, ${userName}';
  }

  @override
  String get movie => 'Movie';

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Search...';

  @override
  String get selectLanguage => 'Select Language:';
}
