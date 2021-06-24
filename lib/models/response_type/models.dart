import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    @JsonKey(name: "poster_path") final String? posterPath,
    @JsonKey(name: "adult") final bool? adult,
    @JsonKey(name: "overview") final String? overview,
    @JsonKey(name: "release_date") final String? releaseDate,
    @JsonKey(name: "genre_ids") final List<int>? genreIds,
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "original_language") final String? originalLanguage,
    @JsonKey(name: "title") final String? title,
    @JsonKey(name: "original_title") final String? originalTitle,
    @JsonKey(name: "name") final String? name,
    @JsonKey(name: "original_name") final String? originalName,
    @JsonKey(name: "backdrop_path") final String? backdropPath,
    @JsonKey(name: "popularity") final double? popularity,
    @JsonKey(name: "vote_count") final int? voteCount,
    @JsonKey(name: "video") final bool? video,
    @JsonKey(name: "vote_average") final double? voteAverage,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

@freezed
class Trailer with _$Trailer {
  const factory Trailer({
    @JsonKey(name: 'id') final String? id,
    @JsonKey(name: 'iso6391') final String? iso6391,
    @JsonKey(name: 'iso31661') final String? iso31661,
    @JsonKey(name: 'key') final String? key,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'site') final String? site,
    @JsonKey(name: 'size') final int? size,
    @JsonKey(name: 'type') final String? type,
  }) = _Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) => _$TrailerFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    @JsonKey(name: "id") final String? id,
    @JsonKey(name: "author") final String? author,
    @JsonKey(name: "content") final String? content,
    @JsonKey(name: "url") final String? url,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
