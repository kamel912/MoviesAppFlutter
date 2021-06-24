// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$_$_MovieFromJson(Map<String, dynamic> json) {
  return _$_Movie(
    posterPath: json['poster_path'] as String?,
    adult: json['adult'] as bool?,
    overview: json['overview'] as String?,
    releaseDate: json['release_date'] as String?,
    genreIds:
        (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
    id: json['id'] as int,
    originalLanguage: json['original_language'] as String?,
    title: json['title'] as String?,
    originalTitle: json['original_title'] as String?,
    name: json['name'] as String?,
    originalName: json['original_name'] as String?,
    backdropPath: json['backdrop_path'] as String?,
    popularity: (json['popularity'] as num?)?.toDouble(),
    voteCount: json['vote_count'] as int?,
    video: json['video'] as bool?,
    voteAverage: (json['vote_average'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'poster_path': instance.posterPath,
      'adult': instance.adult,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'name': instance.name,
      'original_name': instance.originalName,
      'backdrop_path': instance.backdropPath,
      'popularity': instance.popularity,
      'vote_count': instance.voteCount,
      'video': instance.video,
      'vote_average': instance.voteAverage,
    };

_$_Trailer _$_$_TrailerFromJson(Map<String, dynamic> json) {
  return _$_Trailer(
    id: json['id'] as String?,
    iso6391: json['iso6391'] as String?,
    iso31661: json['iso31661'] as String?,
    key: json['key'] as String?,
    name: json['name'] as String?,
    site: json['site'] as String?,
    size: json['size'] as int?,
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$_$_TrailerToJson(_$_Trailer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iso6391': instance.iso6391,
      'iso31661': instance.iso31661,
      'key': instance.key,
      'name': instance.name,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
    };

_$_Review _$_$_ReviewFromJson(Map<String, dynamic> json) {
  return _$_Review(
    id: json['id'] as String?,
    author: json['author'] as String?,
    content: json['content'] as String?,
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$_$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'content': instance.content,
      'url': instance.url,
    };
