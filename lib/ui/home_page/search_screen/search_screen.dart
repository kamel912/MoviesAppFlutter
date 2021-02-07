import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/di/providers/path_providers/path_provider.dart';
import 'package:tester_app/di/providers/search_provider.dart';
import 'package:tester_app/l10n/app_localizations.dart';
import 'package:tester_app/models/response_type/response_type.dart';
import 'package:tester_app/ui/base_widgets/base_app_page.dart';
import 'package:tester_app/ui/base_widgets/base_constants/base_border.dart';
import 'package:tester_app/ui/base_widgets/base_state_widget.dart';
import 'package:tester_app/ui/home_page/movies_screen/movies_grid.dart';
import 'package:tester_app/utils/movies_db_extensions.dart';

class SearchScreen extends BaseAppPage {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends BaseAppPageState<SearchScreen> {
  final _formKey = GlobalKey<FormFieldState>();
  FocusNode _searchFocusNode;

  @override
  void initState() {
    _searchFocusNode = FocusNode();
    super.initState();
  }

  @override
  Widget get body => Container(
        child: ResultStateBuilder<SearchProvider, Movie>(
          builder: (context, moviesList, child) {
            if (moviesList.totalResults > 0) {
              return MoviesGrid(
                movies: moviesList.results,
                crossAxisCount: 3,
              );
            } else
              return Center(
                child: Text('No results found.'),
              );
          },
        ),
      );

  @override
  PreferredSizeWidget get appBar {
    return BaseAppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      flexibleSpace: Container(
        child: Stack(
          children: [
            Positioned(
              bottom: 8.0,
              right: 64.0,
              left: 64.0,
              top: 8.0,
              child: Container(
                // padding: EdgeInsets.symmetric(horizontal: 64.0, vertical: 8.0),
                child: TextFormField(
                  key: _formKey,
                  initialValue: context.read<SearchProvider>().query,
                  onFieldSubmitted: (_) => search(),
                  onChanged: (query) => context.read<SearchProvider>().query = query,
                  validator: (text) {
                    if (text.isEmpty)
                      return ' You should provide a key word.';
                    else
                      return null;
                  },
                  focusNode: _searchFocusNode,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BaseBorderRadiusDirectional.all().resolveSuper(context),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BaseBorderRadiusDirectional.all().resolveSuper(context),
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Theme.of(context).iconTheme.color.withAlpha(0xB2),
                      ),
                    ),
                    hintText: AppLocalizations.of(context).searchHint,
                    suffixIcon: InkWell(
                      borderRadius: BorderRadius.circular(25.0),
                      onTap: search,
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                  textInputAction: TextInputAction.search,
                ),
              ),
            ),
            Positioned.directional(
              end: 8,
              bottom: 4,
              top: 4,
              textDirection: context.watch<Locale>().textDirection,
              child: IconButton(
                icon: Icon(
                  Icons.tune,
                ),
                onPressed: showMenu,
              ),
            ),
          ],
        ),
      ),
    );
  }

  showMenu() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BaseBorderRadiusDirectional.top(),
      ),
      builder: (context) => Container(
        decoration: BoxDecoration(
          borderRadius: BaseBorderRadiusDirectional.top(),
          shape: BoxShape.rectangle,
        ),
        child: StateNotifierBuilder<MainPath>(
          stateNotifier: context.read<MainPathProvider>(),
          builder: (context, selectedMainPath, child) => ListView(
            shrinkWrap: true,
            children: (context.watch<MainPathProvider>().mainPathList)
                .map(
                  (mainPath) => RadioListTile<MainPath>(
                    value: mainPath,
                    groupValue: selectedMainPath,
                    onChanged: (value) => context.read<SearchProvider>().currentMainPath = value,
                    title: Text(mainPath.title),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  void search() {
    if (_formKey.currentState.validate()) {
      context.read<SearchProvider>().search();
    }
  }
}
