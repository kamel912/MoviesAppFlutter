import 'package:provider/provider.dart';
import 'package:tester_app/data/movies_repository.dart';
import 'package:tester_app/di/providers/path_providers/path_provider.dart';
import 'package:tester_app/models/response_type/response_type.dart';
import 'package:tester_app/models/result_state/result_state.dart';

class MoviesProvider extends ResultStateNotifier<Movie> {
  MoviesProvider();

  loadMovies() async => await Future.microtask(
        () => loadData(
          read<MoviesRepository>().loadMovies(
            read<MainPath>().url,
            read<TypePath>().url,
          ),
        ),
      );

  @override
  onTypePathChanged() {
    loadMovies();
  }

  @override
  void initState() {
    loadMovies();
    super.initState();
  }

  @override
  void update(Locator watch) {
    // watch<MainPath>().;
    super.update(watch);
  }
}
