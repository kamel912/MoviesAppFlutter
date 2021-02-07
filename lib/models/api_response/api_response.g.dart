// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponse1<ResponseType> _$_$_ApiResponse1FromJson<ResponseType>(
    Map<String, dynamic> json) {
  return _$_ApiResponse1<ResponseType>(
    page: json['page'] as int,
    totalResults: json['total_results'] as int,
    totalPages: json['total_pages'] as int,
    results: (json['results'] as List)
        ?.map((e) => GenericsJsonConverter<ResponseType>()
            .fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ApiResponse1ToJson<ResponseType>(
        _$_ApiResponse1<ResponseType> instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results': instance.results
          ?.map(GenericsJsonConverter<ResponseType>().toJson)
          ?.toList(),
    };
