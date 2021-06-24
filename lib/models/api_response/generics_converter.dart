import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tester_app/models/response_type/models.dart';

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
    switch (T) {
      case Movie:
        return (model as Movie).toJson();
      case Trailer:
        return (model as Trailer).toJson();
      case Review:
        return (model as Review).toJson();
      default:
    }
    return model as Map<String, dynamic>;
  }
}
