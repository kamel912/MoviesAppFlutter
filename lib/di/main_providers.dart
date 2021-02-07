import 'package:dio/dio.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tester_app/data/api/movies_db_client.dart';
import 'package:tester_app/data/movies_repository.dart';
import 'package:tester_app/di/providers/details_provider.dart';
import 'package:tester_app/di/providers/movies_provider.dart';
import 'package:tester_app/di/providers/navigation_provider.dart';
import 'package:tester_app/di/providers/path_providers/path_provider.dart';
import 'package:tester_app/di/providers/search_provider.dart';
import 'package:tester_app/models/api_response/api_response.dart';
import 'package:tester_app/models/response_type/response_type.dart';
import 'package:tester_app/models/result_state/result_state.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders,
];

List<SingleChildWidget> independentServices = [
  Provider<Dio>(
    create: (context) => Dio(),
  ),
  FutureProvider(
    create: (context) async => await SharedPreferences.getInstance(),
  ),
  StateNotifierProvider<NavigationProvider, int>(
    create: (context) => NavigationProvider(),
  ),
  StateNotifierProvider<MainPathProvider, MainPath>(
    create: (context) => MainPathProvider(context),
  ),
  StateNotifierProvider<TypePathProvider, TypePath>(
    create: (context) => TypePathProvider(),
  ),
  StateNotifierProvider<TypePathListProvider, List<TypePath>>(
    create: (context) => TypePathListProvider(),
  ),
];

List<SingleChildWidget> dependentServices = [
  ProxyProvider<Dio, MoviesDBClient>(
    update: (context, dio, client) => MoviesDBClient(dio),
  ),
  ProxyProvider<MoviesDBClient, MoviesRepository>(
    update: (context, moviesDBClient, moviesRepository) => MoviesRepository(moviesDBClient),
  ),
];

List<SingleChildWidget> uiConsumableProviders = [
  StateNotifierProvider<MoviesProvider, ResultState<ApiResponse<Movie>>>(
    create: (context) => MoviesProvider(),
  ),
  StateNotifierProvider<SearchProvider, ResultState<ApiResponse<Movie>>>(
    create: (context) => SearchProvider(),
    lazy: true,
  ),
  StateNotifierProvider<DetailsProvider, Movie>(
    create: (context) => DetailsProvider(),
    lazy: true,
  ),
];
