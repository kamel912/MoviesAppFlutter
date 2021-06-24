import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tester_app/models/response_type/models.dart';

class FavoritesAdapter extends TypeAdapter<Movie> {
  @override
  Movie read(BinaryReader reader) => Movie.fromJson(
        reader.readMap().map(
              (key, value) => MapEntry(
                key.toString(),
                value,
              ),
            ),
      );

  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, Movie movie) {
    writer.writeMap(movie.toJson());
  }
}

class LocaleAdapter extends TypeAdapter<Locale> {
  @override
  Locale read(BinaryReader reader) => Locale(
        reader.readString(),
      );

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, Locale locale) => writer.writeString(
        locale.languageCode,
      );
}
