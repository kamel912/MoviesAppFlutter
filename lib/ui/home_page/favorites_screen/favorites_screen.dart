import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/di/providers/path_providers/path_provider.dart';
import 'package:tester_app/localization/l10n.dart';
import 'package:tester_app/models/response_type/models.dart';
import 'package:tester_app/ui/base_widgets/base_app_page.dart';
import 'package:tester_app/ui/home_page/movies_screen/movies_grid.dart';
import 'package:tester_app/utils/hive_utils.dart';

class FavoritesScreen extends BaseAppPage {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends BaseAppPageState<FavoritesScreen> {
  final Box<Movie> moviesBox = HiveHelper.favoritesBox;

  @override
  Widget get body => ValueListenableBuilder<Box<Movie>>(
        valueListenable: moviesBox.listenable(),
        builder: (context, movieBox, child) {
          final movies = (moviesBox.toMap()
                ..removeWhere(
                  (key, value) => !validateKey(key),
                ))
              .values
              .toList();
          return Container(
            child: MoviesGrid(
              movies: movies,
              crossAxisCount: 2,
            ),
          );
        },
      );

  bool validateKey(dynamic key) {
    List<String> keyParts = key.toString().split('_');
    return keyParts[1] == context.read<Locale>().languageCode && keyParts[2] == context.read<MainPath>().index.toString();
  }

  @override
  PreferredSizeWidget get appBar => BaseAppBar(
        title: Text(AppLocalizations.of(context).favorites),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              final List<String> moviesKeys = moviesBox.keys.where((key) => validateKey(key)).map((key) => key.toString()).toList();
              moviesBox.deleteAll(moviesKeys);
            },
          ),
        ],
      );
}
