import 'package:flutter/cupertino.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/data/api/movies_db_client.dart';
import 'package:tester_app/data/details_repository.dart';
import 'package:tester_app/di/providers/details_provider.dart';
import 'package:tester_app/models/api_response/api_response.dart';
import 'package:tester_app/models/response_type/models.dart';
import 'package:tester_app/models/result_state/result_state.dart';
import 'package:tester_app/ui/details_page/details_screen.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ProxyProvider<MoviesDBClient, DetailsRepository>(
            update: (context, moviesDBClient, moviesRepository) => DetailsRepository(moviesDBClient),
          ),
          StateNotifierProvider<TrailersProvider, ResultState<ApiResponse<Trailer>>>(
            create: (context) => TrailersProvider(),
          ),
          StateNotifierProvider<ReviewsProvider, ResultState<ApiResponse<Review>>>(
            create: (context) => ReviewsProvider(),
          ),
        ],
        child: DetailsScreen(),
      );
}
