import 'package:tester_app/data/api/movies_db_client.dart';
import 'package:tester_app/models/api_response/api_response.dart';
import 'package:tester_app/models/api_result/api_result.dart';
import 'package:tester_app/models/network_exceptions/network_exceptions.dart';
import 'package:tester_app/models/response_type/models.dart';

class MoviesRepository {
  final MoviesDBClient _moviesDBClient;

  MoviesRepository(this._moviesDBClient);

  Future<ApiResult<ApiResponse<Movie>>> loadMovies(String path, String type) async {
    try {
      ApiResponse<Movie> apiResponse = await _moviesDBClient.getMovies(path, type);
      return ApiResult.success(
        data: apiResponse,
      );
    } catch (error) {
      return ApiResult.failure(
        error: NetworkExceptions.getDioException(error),
      );
    }
  }

  Future<ApiResult<ApiResponse<Movie>>> search(String path, String query) async {
    try {
      ApiResponse<Movie> apiResponse = await _moviesDBClient.searchMovies(path, query);
      return ApiResult.success(
        data: apiResponse,
      );
    } catch (error) {
      return ApiResult.failure(
        error: NetworkExceptions.getDioException(error),
      );
    }
  }
}
