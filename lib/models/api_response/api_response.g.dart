// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse<T> _$ApiResponseFromJson<T>(Map<String, dynamic> json) {
  return ApiResponse<T>(
    page: json['page'] as int?,
    totalResults: json['total_results'] as int?,
    totalPages: json['total_pages'] as int?,
    results: (json['results'] as List<dynamic>)
        .map((e) =>
            GenericsJsonConverter<T>().fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ApiResponseToJson<T>(ApiResponse<T> instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results':
          instance.results.map(GenericsJsonConverter<T>().toJson).toList(),
    };
