import 'package:freezed_annotation/freezed_annotation.dart';

import 'generics_converter.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse<T> {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'total_results')
  int? totalResults;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'results')
  @GenericsJsonConverter()
  final List<T> results;

  ApiResponse({
    this.page,
    this.totalResults,
    this.totalPages,
    required this.results,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson<T>(json);
}
