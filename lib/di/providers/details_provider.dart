import 'package:state_notifier/state_notifier.dart';
import 'package:tester_app/data/details_repository.dart';
import 'package:tester_app/di/providers/path_providers/path_provider.dart';
import 'package:tester_app/models/response_type/models.dart';
import 'package:tester_app/models/result_state/result_state.dart';

class DetailsProvider extends StateNotifier<Movie> {
  DetailsProvider() : super(const Movie(id: -1));

  Movie get movie => state;

  set movie(Movie movie) {
    state = movie;
  }
}

class TrailersProvider extends ResultStateNotifier<Trailer> {
  TrailersProvider() : super();

  loadTrailers() => loadData(
        read<DetailsRepository>().loadTrailers(
          read<MainPathProvider>().state.url,
          read<DetailsProvider>().movie.id,
        ),
      );
}

class ReviewsProvider extends ResultStateNotifier<Review> {
  ReviewsProvider() : super();

  loadReviews() => loadData(
        read<DetailsRepository>().loadReviews(
          read<MainPathProvider>().state.url,
          read<DetailsProvider>().movie.id,
        ),
      );
}

class MovieDetailsProvider extends StateNotifier {
  MovieDetailsProvider(state) : super(state);
}

class MovieDetails {}
