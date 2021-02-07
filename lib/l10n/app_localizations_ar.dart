
// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: unnecessary_brace_in_string_interps

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get account => 'الحساب الشخصي';

  @override
  String get favorites => 'المفضلة';

  @override
  String languages(String languageCode) {
    return '{language, select, en {الإنجليزية} ar {العربية}}';
  }

  @override
  String get movies => 'أفلام';

  @override
  String get tv => 'مسلسبلات';

  @override
  String greeting(String userName) {
    return 'مرحبا ${userName}!';
  }

  @override
  String get movie => 'فيلم';

  @override
  String get search => 'بحث';

  @override
  String get searchHint => 'Search...';

  @override
  String get selectLanguage => 'أختر لغتك:';
}
