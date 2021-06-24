// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

  _Movie call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "adult") bool? adult,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "genre_ids") List<int>? genreIds,
      @JsonKey(name: "id") required int id,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "vote_count") int? voteCount,
      @JsonKey(name: "video") bool? video,
      @JsonKey(name: "vote_average") double? voteAverage}) {
    return _Movie(
      posterPath: posterPath,
      adult: adult,
      overview: overview,
      releaseDate: releaseDate,
      genreIds: genreIds,
      id: id,
      originalLanguage: originalLanguage,
      title: title,
      originalTitle: originalTitle,
      name: name,
      originalName: originalName,
      backdropPath: backdropPath,
      popularity: popularity,
      voteCount: voteCount,
      video: video,
      voteAverage: voteAverage,
    );
  }

  Movie fromJson(Map<String, Object> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "adult")
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "genre_ids")
  List<int>? get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "original_name")
  String? get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_count")
  int? get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: "video")
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "adult") bool? adult,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "genre_ids") List<int>? genreIds,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "vote_count") int? voteCount,
      @JsonKey(name: "video") bool? video,
      @JsonKey(name: "vote_average") double? voteAverage});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? backdropPath = freezed,
    Object? popularity = freezed,
    Object? voteCount = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "adult") bool? adult,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "genre_ids") List<int>? genreIds,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "vote_count") int? voteCount,
      @JsonKey(name: "video") bool? video,
      @JsonKey(name: "vote_average") double? voteAverage});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? backdropPath = freezed,
    Object? popularity = freezed,
    Object? voteCount = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_Movie(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie implements _Movie {
  const _$_Movie(
      {@JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "adult") this.adult,
      @JsonKey(name: "overview") this.overview,
      @JsonKey(name: "release_date") this.releaseDate,
      @JsonKey(name: "genre_ids") this.genreIds,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "original_language") this.originalLanguage,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "original_title") this.originalTitle,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "original_name") this.originalName,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "popularity") this.popularity,
      @JsonKey(name: "vote_count") this.voteCount,
      @JsonKey(name: "video") this.video,
      @JsonKey(name: "vote_average") this.voteAverage});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "adult")
  final bool? adult;
  @override
  @JsonKey(name: "overview")
  final String? overview;
  @override
  @JsonKey(name: "release_date")
  final String? releaseDate;
  @override
  @JsonKey(name: "genre_ids")
  final List<int>? genreIds;
  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "original_language")
  final String? originalLanguage;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "original_title")
  final String? originalTitle;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "original_name")
  final String? originalName;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "popularity")
  final double? popularity;
  @override
  @JsonKey(name: "vote_count")
  final int? voteCount;
  @override
  @JsonKey(name: "video")
  final bool? video;
  @override
  @JsonKey(name: "vote_average")
  final double? voteAverage;

  @override
  String toString() {
    return 'Movie(posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, title: $title, originalTitle: $originalTitle, name: $name, originalName: $originalName, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, video: $video, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Movie &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.adult, adult) ||
                const DeepCollectionEquality().equals(other.adult, adult)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.genreIds, genreIds) ||
                const DeepCollectionEquality()
                    .equals(other.genreIds, genreIds)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.originalLanguage, originalLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.originalLanguage, originalLanguage)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.originalTitle, originalTitle) ||
                const DeepCollectionEquality()
                    .equals(other.originalTitle, originalTitle)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.originalName, originalName) ||
                const DeepCollectionEquality()
                    .equals(other.originalName, originalName)) &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality()
                    .equals(other.voteCount, voteCount)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(adult) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(genreIds) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(originalLanguage) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(originalTitle) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(originalName) ^
      const DeepCollectionEquality().hash(backdropPath) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(voteCount) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(voteAverage);

  @JsonKey(ignore: true)
  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "adult") bool? adult,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "genre_ids") List<int>? genreIds,
      @JsonKey(name: "id") required int id,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "vote_count") int? voteCount,
      @JsonKey(name: "video") bool? video,
      @JsonKey(name: "vote_average") double? voteAverage}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "adult")
  bool? get adult => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "release_date")
  String? get releaseDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "genre_ids")
  List<int>? get genreIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "original_language")
  String? get originalLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "original_title")
  String? get originalTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "original_name")
  String? get originalName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "popularity")
  double? get popularity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vote_count")
  int? get voteCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "video")
  bool? get video => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieCopyWith<_Movie> get copyWith => throw _privateConstructorUsedError;
}

Trailer _$TrailerFromJson(Map<String, dynamic> json) {
  return _Trailer.fromJson(json);
}

/// @nodoc
class _$TrailerTearOff {
  const _$TrailerTearOff();

  _Trailer call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'iso6391') String? iso6391,
      @JsonKey(name: 'iso31661') String? iso31661,
      @JsonKey(name: 'key') String? key,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'site') String? site,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'type') String? type}) {
    return _Trailer(
      id: id,
      iso6391: iso6391,
      iso31661: iso31661,
      key: key,
      name: name,
      site: site,
      size: size,
      type: type,
    );
  }

  Trailer fromJson(Map<String, Object> json) {
    return Trailer.fromJson(json);
  }
}

/// @nodoc
const $Trailer = _$TrailerTearOff();

/// @nodoc
mixin _$Trailer {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso6391')
  String? get iso6391 => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso31661')
  String? get iso31661 => throw _privateConstructorUsedError;
  @JsonKey(name: 'key')
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'site')
  String? get site => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailerCopyWith<Trailer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailerCopyWith<$Res> {
  factory $TrailerCopyWith(Trailer value, $Res Function(Trailer) then) =
      _$TrailerCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'iso6391') String? iso6391,
      @JsonKey(name: 'iso31661') String? iso31661,
      @JsonKey(name: 'key') String? key,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'site') String? site,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class _$TrailerCopyWithImpl<$Res> implements $TrailerCopyWith<$Res> {
  _$TrailerCopyWithImpl(this._value, this._then);

  final Trailer _value;
  // ignore: unused_field
  final $Res Function(Trailer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? site = freezed,
    Object? size = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      iso6391: iso6391 == freezed
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: iso31661 == freezed
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TrailerCopyWith<$Res> implements $TrailerCopyWith<$Res> {
  factory _$TrailerCopyWith(_Trailer value, $Res Function(_Trailer) then) =
      __$TrailerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'iso6391') String? iso6391,
      @JsonKey(name: 'iso31661') String? iso31661,
      @JsonKey(name: 'key') String? key,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'site') String? site,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class __$TrailerCopyWithImpl<$Res> extends _$TrailerCopyWithImpl<$Res>
    implements _$TrailerCopyWith<$Res> {
  __$TrailerCopyWithImpl(_Trailer _value, $Res Function(_Trailer) _then)
      : super(_value, (v) => _then(v as _Trailer));

  @override
  _Trailer get _value => super._value as _Trailer;

  @override
  $Res call({
    Object? id = freezed,
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? site = freezed,
    Object? size = freezed,
    Object? type = freezed,
  }) {
    return _then(_Trailer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      iso6391: iso6391 == freezed
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: iso31661 == freezed
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trailer implements _Trailer {
  const _$_Trailer(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'iso6391') this.iso6391,
      @JsonKey(name: 'iso31661') this.iso31661,
      @JsonKey(name: 'key') this.key,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'site') this.site,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'type') this.type});

  factory _$_Trailer.fromJson(Map<String, dynamic> json) =>
      _$_$_TrailerFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'iso6391')
  final String? iso6391;
  @override
  @JsonKey(name: 'iso31661')
  final String? iso31661;
  @override
  @JsonKey(name: 'key')
  final String? key;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'site')
  final String? site;
  @override
  @JsonKey(name: 'size')
  final int? size;
  @override
  @JsonKey(name: 'type')
  final String? type;

  @override
  String toString() {
    return 'Trailer(id: $id, iso6391: $iso6391, iso31661: $iso31661, key: $key, name: $name, site: $site, size: $size, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Trailer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.iso6391, iso6391) ||
                const DeepCollectionEquality()
                    .equals(other.iso6391, iso6391)) &&
            (identical(other.iso31661, iso31661) ||
                const DeepCollectionEquality()
                    .equals(other.iso31661, iso31661)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(iso6391) ^
      const DeepCollectionEquality().hash(iso31661) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$TrailerCopyWith<_Trailer> get copyWith =>
      __$TrailerCopyWithImpl<_Trailer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TrailerToJson(this);
  }
}

abstract class _Trailer implements Trailer {
  const factory _Trailer(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'iso6391') String? iso6391,
      @JsonKey(name: 'iso31661') String? iso31661,
      @JsonKey(name: 'key') String? key,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'site') String? site,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'type') String? type}) = _$_Trailer;

  factory _Trailer.fromJson(Map<String, dynamic> json) = _$_Trailer.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'iso6391')
  String? get iso6391 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'iso31661')
  String? get iso31661 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'key')
  String? get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'site')
  String? get site => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrailerCopyWith<_Trailer> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
class _$ReviewTearOff {
  const _$ReviewTearOff();

  _Review call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "url") String? url}) {
    return _Review(
      id: id,
      author: author,
      content: content,
      url: url,
    );
  }

  Review fromJson(Map<String, Object> json) {
    return Review.fromJson(json);
  }
}

/// @nodoc
const $Review = _$ReviewTearOff();

/// @nodoc
mixin _$Review {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) then) =
      __$ReviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(_Review _value, $Res Function(_Review) _then)
      : super(_value, (v) => _then(v as _Review));

  @override
  _Review get _value => super._value as _Review;

  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? url = freezed,
  }) {
    return _then(_Review(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  const _$_Review(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "url") this.url});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "author")
  final String? author;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'Review(id: $id, author: $author, content: $content, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Review &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$ReviewCopyWith<_Review> get copyWith =>
      __$ReviewCopyWithImpl<_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewToJson(this);
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "url") String? url}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "author")
  String? get author => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewCopyWith<_Review> get copyWith => throw _privateConstructorUsedError;
}
