import 'package:tester_app/data/api/movies_db_client.dart';
import 'package:tester_app/models/api_response/api_response.dart';
import 'package:tester_app/models/api_result/api_result.dart';
import 'package:tester_app/models/network_exceptions/network_exceptions.dart';
import 'package:tester_app/models/response_type/models.dart';

class DetailsRepository {
  final MoviesDBClient _moviesDBClient;

  DetailsRepository(this._moviesDBClient);

  Future<ApiResult<ApiResponse<Trailer>>> loadTrailers(String path, int movieId) async {
    try {
      ApiResponse<Trailer> apiResponse = await _moviesDBClient.getTrailers(path, movieId);
      return ApiResult.success(
        data: apiResponse,
      );
    } catch (error) {
      return ApiResult.failure(
        error: NetworkExceptions.getDioException(error),
      );
    }
  }

  Future<ApiResult<ApiResponse<Review>>> loadReviews(String path, int movieId) async {
    try {
      ApiResponse<Review> apiResponse = await _moviesDBClient.getReviews(path, movieId);
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
