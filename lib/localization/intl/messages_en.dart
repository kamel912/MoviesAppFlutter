// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(error) => "Error occurred: ${error}";

  static String m1(path) => "${Intl.select(path, {
            'movie': 'Movies',
            'tv': 'TV',
            'other': 'Other',
          })}";

  static String m2(responseCode) =>
      "Received invalid status code: ${responseCode}";

  static String m3(localeName) => "${Intl.select(localeName, {
            'en': 'English',
            'ar': 'العربية',
            'other': 'Other',
          })}";

  static String m4(path) => "${Intl.select(path, {
            'popular': 'Popular',
            'top_rated': 'Top rated',
            'upcoming': 'Upcoming',
            'now_playing': 'Now playing',
            'other': 'Other',
          })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle": MessageLookupByLibrary.simpleMessage("My Movies"),
        "badRequest": MessageLookupByLibrary.simpleMessage("Bad request"),
        "connectionRequestTimeout":
            MessageLookupByLibrary.simpleMessage("Connection request timeout"),
        "country": MessageLookupByLibrary.simpleMessage("Country"),
        "errorDueToAConflict":
            MessageLookupByLibrary.simpleMessage("Error due to a conflict"),
        "errorOccurred": m0,
        "errorOccurredError":
            MessageLookupByLibrary.simpleMessage("Error occurred: \$error"),
        "favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "internalServerError":
            MessageLookupByLibrary.simpleMessage("Internal Server Error"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "localization":
            MessageLookupByLibrary.simpleMessage("Language & Country"),
        "mainPathTitle": m1,
        "methodAllowed": MessageLookupByLibrary.simpleMessage("Method Allowed"),
        "movie": MessageLookupByLibrary.simpleMessage("Movie"),
        "movies": MessageLookupByLibrary.simpleMessage("Movies"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "notAcceptable": MessageLookupByLibrary.simpleMessage("Not acceptable"),
        "notFound": MessageLookupByLibrary.simpleMessage("Not found"),
        "notImplemented":
            MessageLookupByLibrary.simpleMessage("Not Implemented"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "receivedInvalidStatusCode": m2,
        "requestCancelled":
            MessageLookupByLibrary.simpleMessage("Request Cancelled"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "searchHint": MessageLookupByLibrary.simpleMessage("Search..."),
        "searchValidation": MessageLookupByLibrary.simpleMessage(
            "You should provide a key word."),
        "selectCountry": MessageLookupByLibrary.simpleMessage("Select Country"),
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("Select Language"),
        "selectLocale": m3,
        "sendTimeoutInConnectionWithApiServer":
            MessageLookupByLibrary.simpleMessage(
                "Send timeout in connection with API server"),
        "serviceUnavailable":
            MessageLookupByLibrary.simpleMessage("Service unavailable"),
        "tv": MessageLookupByLibrary.simpleMessage("TV"),
        "typePathTitle": m4,
        "unableToProcessTheData":
            MessageLookupByLibrary.simpleMessage("Unable to process the data"),
        "unauthorizedRequest":
            MessageLookupByLibrary.simpleMessage("Unauthorized request"),
        "unexpectedErrorOccurred":
            MessageLookupByLibrary.simpleMessage("Unexpected error occurred"),
        "videos": MessageLookupByLibrary.simpleMessage("Videos")
      };
}
