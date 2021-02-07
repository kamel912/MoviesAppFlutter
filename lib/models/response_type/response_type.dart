import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_type.freezed.dart';
part 'response_type.g.dart';

@freezed
abstract class ResponseType with _$ResponseType {
  const factory ResponseType.movie({
    @JsonKey(name: "poster_path") final String posterPath,
    @JsonKey(name: "adult") final bool adult,
    @JsonKey(name: "overview") final String overview,
    @JsonKey(name: "release_date") final String releaseDate,
    @JsonKey(name: "genre_ids") final List<int> genreIds,
    @JsonKey(name: "id") final int id,
    @JsonKey(name: "original_language") final String originalLanguage,
    @JsonKey(name: "title") final String title,
    @JsonKey(name: "original_title") final String originalTitle,
    @JsonKey(name: "name") final String name,
    @JsonKey(name: "original_name") final String originalName,
    @JsonKey(name: "backdrop_path") final String backdropPath,
    @JsonKey(name: "popularity") final double popularity,
    @JsonKey(name: "vote_count") final int voteCount,
    @JsonKey(name: "video") final bool video,
    @JsonKey(name: "vote_average") final double voteAverage,
  }) = Movie;

  const factory ResponseType.trailer({
    @JsonKey(name: 'id') final String id,
    @JsonKey(name: 'iso6391') final String iso6391,
    @JsonKey(name: 'iso31661') final String iso31661,
    @JsonKey(name: 'key') final String key,
    @JsonKey(name: 'name') final String name,
    @JsonKey(name: 'site') final String site,
    @JsonKey(name: 'size') final int size,
    @JsonKey(name: 'type') final String type,
  }) = Trailer;

  const factory ResponseType.review({
    @JsonKey(name: "id") final String id,
    @JsonKey(name: "author") final String author,
    @JsonKey(name: "content") final String content,
    @JsonKey(name: "url") final String url,
  }) = Review;

  factory ResponseType.fromJson(Map<String, dynamic> json) => _$ResponseTypeFromJson(json);
}
