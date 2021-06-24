// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `My Movies`
  String get appTitle {
    return Intl.message(
      'My Movies',
      name: 'appTitle',
      desc: 'Application Title',
      args: [],
    );
  }

  /// `Bad request`
  String get badRequest {
    return Intl.message(
      'Bad request',
      name: 'badRequest',
      desc: 'Bad Request Error',
      args: [],
    );
  }

  /// `Connection request timeout`
  String get connectionRequestTimeout {
    return Intl.message(
      'Connection request timeout',
      name: 'connectionRequestTimeout',
      desc: 'Connection Request Timeout Error',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: 'Country title',
      args: [],
    );
  }

  /// `Error due to a conflict`
  String get errorDueToAConflict {
    return Intl.message(
      'Error due to a conflict',
      name: 'errorDueToAConflict',
      desc: 'Error Due To A Conflict Error',
      args: [],
    );
  }

  /// `Error occurred: {error}`
  String errorOccurred(Object error) {
    return Intl.message(
      'Error occurred: $error',
      name: 'errorOccurred',
      desc: '',
      args: [error],
    );
  }

  /// `Error occurred: $error`
  String get errorOccurredError {
    return Intl.message(
      'Error occurred: \$error',
      name: 'errorOccurredError',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: 'Favorites page title',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: 'Home page title',
      args: [],
    );
  }

  /// `Internal Server Error`
  String get internalServerError {
    return Intl.message(
      'Internal Server Error',
      name: 'internalServerError',
      desc: 'Internal Server Error Error',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: 'Language key',
      args: [],
    );
  }

  /// `Language & Country`
  String get localization {
    return Intl.message(
      'Language & Country',
      name: 'localization',
      desc: 'Localization title',
      args: [],
    );
  }

  /// `Method Allowed`
  String get methodAllowed {
    return Intl.message(
      'Method Allowed',
      name: 'methodAllowed',
      desc: 'Method Allowed Error',
      args: [],
    );
  }

  /// `Movie`
  String get movie {
    return Intl.message(
      'Movie',
      name: 'movie',
      desc: 'Movie tab title',
      args: [],
    );
  }

  /// `Movies`
  String get movies {
    return Intl.message(
      'Movies',
      name: 'movies',
      desc: 'Movies title',
      args: [],
    );
  }

  /// `No internet connection`
  String get noInternetConnection {
    return Intl.message(
      'No internet connection',
      name: 'noInternetConnection',
      desc: 'No Internet Connection Error',
      args: [],
    );
  }

  /// `Not acceptable`
  String get notAcceptable {
    return Intl.message(
      'Not acceptable',
      name: 'notAcceptable',
      desc: 'Not Acceptable Error',
      args: [],
    );
  }

  /// `Not found`
  String get notFound {
    return Intl.message(
      'Not found',
      name: 'notFound',
      desc: '',
      args: [],
    );
  }

  /// `Not Implemented`
  String get notImplemented {
    return Intl.message(
      'Not Implemented',
      name: 'notImplemented',
      desc: 'Not Implemented Error',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: 'Profile page Title',
      args: [],
    );
  }

  /// `Received invalid status code: {responseCode}`
  String receivedInvalidStatusCode(Object responseCode) {
    return Intl.message(
      'Received invalid status code: $responseCode',
      name: 'receivedInvalidStatusCode',
      desc: '',
      args: [responseCode],
    );
  }

  /// `Request Cancelled`
  String get requestCancelled {
    return Intl.message(
      'Request Cancelled',
      name: 'requestCancelled',
      desc: 'Request Cancelled Error',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: 'Search page title',
      args: [],
    );
  }

  /// `Search...`
  String get searchHint {
    return Intl.message(
      'Search...',
      name: 'searchHint',
      desc: 'Search hint',
      args: [],
    );
  }

  /// `Select Country`
  String get selectCountry {
    return Intl.message(
      'Select Country',
      name: 'selectCountry',
      desc: 'Select Country title',
      args: [],
    );
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: 'Select Language title',
      args: [],
    );
  }

  /// `{localeName, select, en{English} ar{العربية} other{Other}}`
  String selectLocale(Object localeName) {
    return Intl.select(
      localeName,
      {
        'en': 'English',
        'ar': 'العربية',
        'other': 'Other',
      },
      name: 'selectLocale',
      desc: '',
      args: [localeName],
    );
  }

  /// `Send timeout in connection with API server`
  String get sendTimeoutInConnectionWithApiServer {
    return Intl.message(
      'Send timeout in connection with API server',
      name: 'sendTimeoutInConnectionWithApiServer',
      desc: 'Send Timeout In Connection With Api Server Error',
      args: [],
    );
  }

  /// `Service unavailable`
  String get serviceUnavailable {
    return Intl.message(
      'Service unavailable',
      name: 'serviceUnavailable',
      desc: 'Service Unavailable Error',
      args: [],
    );
  }

  /// `TV`
  String get tv {
    return Intl.message(
      'TV',
      name: 'tv',
      desc: 'TV Title',
      args: [],
    );
  }

  /// `Unable to process the data`
  String get unableToProcessTheData {
    return Intl.message(
      'Unable to process the data',
      name: 'unableToProcessTheData',
      desc: 'Unable To Process The Data Error',
      args: [],
    );
  }

  /// `Unauthorized request`
  String get unauthorizedRequest {
    return Intl.message(
      'Unauthorized request',
      name: 'unauthorizedRequest',
      desc: 'Unauthorized Request Error',
      args: [],
    );
  }

  /// `Unexpected error occurred`
  String get unexpectedErrorOccurred {
    return Intl.message(
      'Unexpected error occurred',
      name: 'unexpectedErrorOccurred',
      desc: 'Unexpected Error Occurred Error',
      args: [],
    );
  }

  /// `Videos`
  String get videos {
    return Intl.message(
      'Videos',
      name: 'videos',
      desc: '',
      args: [],
    );
  }

  /// `You should provide a key word.`
  String get searchValidation {
    return Intl.message(
      'You should provide a key word.',
      name: 'searchValidation',
      desc: '',
      args: [],
    );
  }

  /// `{path, select, movie{Movies} tv{TV} other{Other}}`
  String mainPathTitle(Object path) {
    return Intl.select(
      path,
      {
        'movie': 'Movies',
        'tv': 'TV',
        'other': 'Other',
      },
      name: 'mainPathTitle',
      desc: '',
      args: [path],
    );
  }

  /// `{path, select, popular{Popular} top_rated{Top rated} upcoming{Upcoming} now_playing{Now playing} other{Other}}`
  String typePathTitle(Object path) {
    return Intl.select(
      path,
      {
        'popular': 'Popular',
        'top_rated': 'Top rated',
        'upcoming': 'Upcoming',
        'now_playing': 'Now playing',
        'other': 'Other',
      },
      name: 'typePathTitle',
      desc: '',
      args: [path],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
