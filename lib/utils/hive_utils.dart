import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tester_app/data/database/database_helper.dart';
import 'package:tester_app/models/response_type/models.dart';

class HiveHelper {
  HiveHelper();
  static String _localeBoxKey = 'localeBox';
  static String _favoritesBoxKey = 'favoritesBox';

  static init() async {
    Hive.registerAdapter(LocaleAdapter());
    Hive.registerAdapter(FavoritesAdapter());
    await Hive.initFlutter();
    await Hive.openBox<Locale>(_localeBoxKey);
    await Hive.openBox<Movie>(_favoritesBoxKey);
  }

  static Box<Movie> get favoritesBox => Hive.box<Movie>(_favoritesBoxKey);

  static Box<Locale> get localeBox => Hive.box<Locale>(_localeBoxKey);
}
