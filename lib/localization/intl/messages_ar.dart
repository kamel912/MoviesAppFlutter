// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(error) => "حدث خطأ: ${error}";

  static String m1(path) => "${Intl.select(path, {
            'movie': 'أفلام',
            'tv': 'مسلسلات',
            'other': 'Other',
          })}";

  static String m2(responseCode) =>
      "تم استلام رمز حالة غير صالح: ${responseCode}";

  static String m3(localeName) => "${Intl.select(localeName, {
            'en': 'English',
            'ar': 'العربية',
            'other': 'Other',
          })}";

  static String m4(path) => "${Intl.select(path, {
            'popular': 'الأكثر شهرة',
            'top_rated': 'الأعلى تقييما',
            'upcoming': 'قريبا',
            'now_playing': 'يعرض حاليا',
            'other': 'Other',
          })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle": MessageLookupByLibrary.simpleMessage("أفلامي"),
        "badRequest": MessageLookupByLibrary.simpleMessage("اقتراح غير جيد"),
        "connectionRequestTimeout":
            MessageLookupByLibrary.simpleMessage("انتهت مهلة طلب الاتصال"),
        "country": MessageLookupByLibrary.simpleMessage("الدولة"),
        "errorDueToAConflict":
            MessageLookupByLibrary.simpleMessage("خطأ بسبب التعارض"),
        "errorOccurred": m0,
        "errorOccurredError":
            MessageLookupByLibrary.simpleMessage("حدث خطأ: \$ error"),
        "favorites": MessageLookupByLibrary.simpleMessage("المفضلة"),
        "home": MessageLookupByLibrary.simpleMessage("الصفحة الرئيسية"),
        "internalServerError":
            MessageLookupByLibrary.simpleMessage("خطأ في الخادم الداخلي"),
        "language": MessageLookupByLibrary.simpleMessage("اللغة"),
        "localization": MessageLookupByLibrary.simpleMessage("اللغة والدولة"),
        "mainPathTitle": m1,
        "methodAllowed":
            MessageLookupByLibrary.simpleMessage("الطريقة المسموح بها"),
        "movie": MessageLookupByLibrary.simpleMessage("فيلم"),
        "movies": MessageLookupByLibrary.simpleMessage("أفلام"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("لا يوجد اتصال بالإنترنت"),
        "notAcceptable": MessageLookupByLibrary.simpleMessage("غير مقبول"),
        "notFound": MessageLookupByLibrary.simpleMessage("غير معثور عليه"),
        "notImplemented": MessageLookupByLibrary.simpleMessage("لم يتم تنفيذه"),
        "profile": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
        "receivedInvalidStatusCode": m2,
        "requestCancelled":
            MessageLookupByLibrary.simpleMessage("تم إلغاء الطلب"),
        "search": MessageLookupByLibrary.simpleMessage("بحث"),
        "searchHint": MessageLookupByLibrary.simpleMessage("بحث..."),
        "selectCountry": MessageLookupByLibrary.simpleMessage("حدد الدولة"),
        "selectLanguage": MessageLookupByLibrary.simpleMessage("أختر اللغة"),
        "selectLocale": m3,
        "sendTimeoutInConnectionWithApiServer":
            MessageLookupByLibrary.simpleMessage(
                "إرسال المهلة فيما يتعلق بخادم API"),
        "serviceUnavailable":
            MessageLookupByLibrary.simpleMessage("الخدمة غير متوفرة"),
        "tv": MessageLookupByLibrary.simpleMessage("مسلسبلات"),
        "typePathTitle": m4,
        "unableToProcessTheData": MessageLookupByLibrary.simpleMessage(
            "غير قادر على معالجة البيانات"),
        "unauthorizedRequest":
            MessageLookupByLibrary.simpleMessage("طلب غير مصرح به"),
        "unexpectedErrorOccurred":
            MessageLookupByLibrary.simpleMessage("حدث خطأ غير متوقع"),
        "videos": MessageLookupByLibrary.simpleMessage("فيديو")
      };
}
