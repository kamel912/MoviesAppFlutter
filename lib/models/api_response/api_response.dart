import 'package:freezed_annotation/freezed_annotation.dart';

import 'generics_converter.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
abstract class ApiResponse<ResponseType> with _$ApiResponse {
  const factory ApiResponse({
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'total_results') int totalResults,
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'results') @GenericsJsonConverter() List<ResponseType> results,
  }) = _ApiResponse1;

  factory ApiResponse.fromJson(Map<String, dynamic> json,
          [ResponseType Function(Map<String, dynamic> json) itemConverter]) =>
      _$ApiResponseFromJson<ResponseType>(json);
}
