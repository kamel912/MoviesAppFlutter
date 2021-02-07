// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_db_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MoviesDBClient implements MoviesDBClient {
  _MoviesDBClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://api.themoviedb.org/3/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<ApiResponse<Movie>> getMovies(path, type) async {
    ArgumentError.checkNotNull(path, 'path');
    ArgumentError.checkNotNull(type, 'type');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('$path/$type',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<Movie>.fromJson(
      _result.data,
      (json) => Movie.fromJson(json),
    );
    return value;
  }

  @override
  Future<Movie> getMovie(path, id) async {
    ArgumentError.checkNotNull(path, 'path');
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('$path/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Movie.fromJson(_result.data);
    return value;
  }

  @override
  Future<ApiResponse<Trailer>> getTrailers(path, id) async {
    ArgumentError.checkNotNull(path, 'path');
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('$path/$id/videos',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<Trailer>.fromJson(
      _result.data,
      (json) => Trailer.fromJson(json),
    );
    return value;
  }

  @override
  Future<ApiResponse<Review>> getReviews(path, id) async {
    ArgumentError.checkNotNull(path, 'path');
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '$path/$id/reviews',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<Review>.fromJson(
      _result.data,
      (json) => Review.fromJson(json),
    );
    return value;
  }

  @override
  Future<ApiResponse<Movie>> searchMovies(path, query) async {
    ArgumentError.checkNotNull(path, 'path');
    ArgumentError.checkNotNull(query, 'query');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'query': query};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('search/$path',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ApiResponse<Movie>.fromJson(
      _result.data,
      (json) => Movie.fromJson(json),
    );
    return value;
  }
}
