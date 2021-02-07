import 'package:tester_app/data/movies_repository.dart';
import 'package:tester_app/di/providers/path_providers/path_provider.dart';
import 'package:tester_app/models/response_type/response_type.dart';
import 'package:tester_app/models/result_state/result_state.dart';

class SearchProvider extends ResultStateNotifier<Movie> {
  String query;

  SearchProvider();

  search() => loadData(
        read<MoviesRepository>().search(
          read<MainPathProvider>().state.url,
          query,
        ),
      );

  clear() {
    query = null;
  }
}
