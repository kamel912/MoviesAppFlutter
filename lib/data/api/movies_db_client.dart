import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:tester_app/data/api/base_urls.dart' as Urls;
import 'package:tester_app/models/api_response/api_response.dart';
import 'package:tester_app/models/response_type/models.dart';

part 'movies_db_client.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class MoviesDBClient {
  factory MoviesDBClient(Dio dio) {
    dio.options = BaseOptions(
      connectTimeout: 5000,
      contentType: 'Application/Json',
      queryParameters: {
        Urls.apiKey: Urls.myApiKey,
      },
    );
    return _MoviesDBClient(dio);
  }

  @GET('{path}/{type}')
  Future<ApiResponse<Movie>> getMovies(@Path('path') String path, @Path('type') String type);

  @GET('{path}/{id}')
  Future<Movie> getMovie(@Path('path') String path, @Path('id') int id);

  @GET('{path}/{id}/videos')
  Future<ApiResponse<Trailer>> getTrailers(@Path('path') String path, @Path('id') int id);

  @GET('{path}/{id}/reviews')
  Future<ApiResponse<Review>> getReviews(@Path('path') String path, @Path('id') int id);

  @GET('search/{path}', autoCastResponse: false)
  Future<ApiResponse<Movie>> searchMovies(@Path('path') String path, @Query('query') String query);
}
