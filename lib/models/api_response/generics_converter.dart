import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tester_app/models/response_type/response_type.dart';

class GenericsJsonConverter<T> implements JsonConverter<T, Map<String, dynamic>> {
  const GenericsJsonConverter();

  @override
  T fromJson(Map<String, dynamic> json) {
    switch (T) {
      case Movie:
        return Movie.fromJson(json) as T;
      case Trailer:
        return Trailer.fromJson(json) as T;
      case Review:
        return Review.fromJson(json) as T;
      default:
    }
    return json as T;
  }

  @override
  Map<String, dynamic> toJson(T model) {
    return (model as ResponseType).toJson();
  }
}
