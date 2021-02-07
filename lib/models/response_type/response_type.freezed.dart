// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'response_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ResponseType _$ResponseTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'movie':
      return Movie.fromJson(json);
    case 'trailer':
      return Trailer.fromJson(json);
    case 'review':
      return Review.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$ResponseTypeTearOff {
  const _$ResponseTypeTearOff();

// ignore: unused_element
  Movie movie(
      {@JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "adult") bool adult,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "genre_ids") List<int> genreIds,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_language") String originalLanguage,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "original_title") String originalTitle,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "original_name") String originalName,
      @JsonKey(name: "backdrop_path") String backdropPath,
      @JsonKey(name: "popularity") double popularity,
      @JsonKey(name: "vote_count") int voteCount,
      @JsonKey(name: "video") bool video,
      @JsonKey(name: "vote_average") double voteAverage}) {
    return Movie(
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

// ignore: unused_element
  Trailer trailer(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'iso6391') String iso6391,
      @JsonKey(name: 'iso31661') String iso31661,
      @JsonKey(name: 'key') String key,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'site') String site,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'type') String type}) {
    return Trailer(
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

// ignore: unused_element
  Review review(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "author") String author,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "url") String url}) {
    return Review(
      id: id,
      author: author,
      content: content,
      url: url,
    );
  }

// ignore: unused_element
  ResponseType fromJson(Map<String, Object> json) {
    return ResponseType.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ResponseType = _$ResponseTypeTearOff();

/// @nodoc
mixin _$ResponseType {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult movie(
            @JsonKey(name: "poster_path") String posterPath,
            @JsonKey(name: "adult") bool adult,
            @JsonKey(name: "overview") String overview,
            @JsonKey(name: "release_date") String releaseDate,
            @JsonKey(name: "genre_ids") List<int> genreIds,
            @JsonKey(name: "id") int id,
            @JsonKey(name: "original_language") String originalLanguage,
            @JsonKey(name: "title") String title,
            @JsonKey(name: "original_title") String originalTitle,
            @JsonKey(name: "name") String name,
            @JsonKey(name: "original_name") String originalName,
            @JsonKey(name: "backdrop_path") String backdropPath,
            @JsonKey(name: "popularity") double popularity,
            @JsonKey(name: "vote_count") int voteCount,
            @JsonKey(name: "video") bool video,
            @JsonKey(name: "vote_average") double voteAverage),
    @required
        TResult trailer(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'iso6391') String iso6391,
            @JsonKey(name: 'iso31661') String iso31661,
            @JsonKey(name: 'key') String key,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'site') String site,
            @JsonKey(name: 'size') int size,
            @JsonKey(name: 'type') String type),
    @required
        TResult review(
            @JsonKey(name: "id") String id,
            @JsonKey(name: "author") String author,
            @JsonKey(name: "content") String content,
            @JsonKey(name: "url") String url),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult movie(
        @JsonKey(name: "poster_path") String posterPath,
        @JsonKey(name: "adult") bool adult,
        @JsonKey(name: "overview") String overview,
        @JsonKey(name: "release_date") String releaseDate,
        @JsonKey(name: "genre_ids") List<int> genreIds,
        @JsonKey(name: "id") int id,
        @JsonKey(name: "original_language") String originalLanguage,
        @JsonKey(name: "title") String title,
        @JsonKey(name: "original_title") String originalTitle,
        @JsonKey(name: "name") String name,
        @JsonKey(name: "original_name") String originalName,
        @JsonKey(name: "backdrop_path") String backdropPath,
        @JsonKey(name: "popularity") double popularity,
        @JsonKey(name: "vote_count") int voteCount,
        @JsonKey(name: "video") bool video,
        @JsonKey(name: "vote_average") double voteAverage),
    TResult trailer(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'iso6391') String iso6391,
        @JsonKey(name: 'iso31661') String iso31661,
        @JsonKey(name: 'key') String key,
        @JsonKey(name: 'name') String name,
        @JsonKey(name: 'site') String site,
        @JsonKey(name: 'size') int size,
        @JsonKey(name: 'type') String type),
    TResult review(
        @JsonKey(name: "id") String id,
        @JsonKey(name: "author") String author,
        @JsonKey(name: "content") String content,
        @JsonKey(name: "url") String url),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult movie(Movie value),
    @required TResult trailer(Trailer value),
    @required TResult review(Review value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult movie(Movie value),
    TResult trailer(Trailer value),
    TResult review(Review value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $ResponseTypeCopyWith<$Res> {
  factory $ResponseTypeCopyWith(
          ResponseType value, $Res Function(ResponseType) then) =
      _$ResponseTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResponseTypeCopyWithImpl<$Res> implements $ResponseTypeCopyWith<$Res> {
  _$ResponseTypeCopyWithImpl(this._value, this._then);

  final ResponseType _value;
  // ignore: unused_field
  final $Res Function(ResponseType) _then;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "adult") bool adult,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "genre_ids") List<int> genreIds,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_language") String originalLanguage,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "original_title") String originalTitle,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "original_name") String originalName,
      @JsonKey(name: "backdrop_path") String backdropPath,
      @JsonKey(name: "popularity") double popularity,
      @JsonKey(name: "vote_count") int voteCount,
      @JsonKey(name: "video") bool video,
      @JsonKey(name: "vote_average") double voteAverage});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> extends _$ResponseTypeCopyWithImpl<$Res>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(Movie _value, $Res Function(Movie) _then)
      : super(_value, (v) => _then(v as Movie));

  @override
  Movie get _value => super._value as Movie;

  @override
  $Res call({
    Object posterPath = freezed,
    Object adult = freezed,
    Object overview = freezed,
    Object releaseDate = freezed,
    Object genreIds = freezed,
    Object id = freezed,
    Object originalLanguage = freezed,
    Object title = freezed,
    Object originalTitle = freezed,
    Object name = freezed,
    Object originalName = freezed,
    Object backdropPath = freezed,
    Object popularity = freezed,
    Object voteCount = freezed,
    Object video = freezed,
    Object voteAverage = freezed,
  }) {
    return _then(Movie(
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      adult: adult == freezed ? _value.adult : adult as bool,
      overview: overview == freezed ? _value.overview : overview as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as String,
      genreIds: genreIds == freezed ? _value.genreIds : genreIds as List<int>,
      id: id == freezed ? _value.id : id as int,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage as String,
      title: title == freezed ? _value.title : title as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      name: name == freezed ? _value.name : name as String,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      video: video == freezed ? _value.video : video as bool,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Movie implements Movie {
  const _$Movie(
      {@JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "adult") this.adult,
      @JsonKey(name: "overview") this.overview,
      @JsonKey(name: "release_date") this.releaseDate,
      @JsonKey(name: "genre_ids") this.genreIds,
      @JsonKey(name: "id") this.id,
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

  factory _$Movie.fromJson(Map<String, dynamic> json) =>
      _$_$MovieFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String posterPath;
  @override
  @JsonKey(name: "adult")
  final bool adult;
  @override
  @JsonKey(name: "overview")
  final String overview;
  @override
  @JsonKey(name: "release_date")
  final String releaseDate;
  @override
  @JsonKey(name: "genre_ids")
  final List<int> genreIds;
  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "original_language")
  final String originalLanguage;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "original_title")
  final String originalTitle;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "original_name")
  final String originalName;
  @override
  @JsonKey(name: "backdrop_path")
  final String backdropPath;
  @override
  @JsonKey(name: "popularity")
  final double popularity;
  @override
  @JsonKey(name: "vote_count")
  final int voteCount;
  @override
  @JsonKey(name: "video")
  final bool video;
  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;

  @override
  String toString() {
    return 'ResponseType.movie(posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, title: $title, originalTitle: $originalTitle, name: $name, originalName: $originalName, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, video: $video, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Movie &&
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
  $MovieCopyWith<Movie> get copyWith =>
      _$MovieCopyWithImpl<Movie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult movie(
            @JsonKey(name: "poster_path") String posterPath,
            @JsonKey(name: "adult") bool adult,
            @JsonKey(name: "overview") String overview,
            @JsonKey(name: "release_date") String releaseDate,
            @JsonKey(name: "genre_ids") List<int> genreIds,
            @JsonKey(name: "id") int id,
            @JsonKey(name: "original_language") String originalLanguage,
            @JsonKey(name: "title") String title,
            @JsonKey(name: "original_title") String originalTitle,
            @JsonKey(name: "name") String name,
            @JsonKey(name: "original_name") String originalName,
            @JsonKey(name: "backdrop_path") String backdropPath,
            @JsonKey(name: "popularity") double popularity,
            @JsonKey(name: "vote_count") int voteCount,
            @JsonKey(name: "video") bool video,
            @JsonKey(name: "vote_average") double voteAverage),
    @required
        TResult trailer(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'iso6391') String iso6391,
            @JsonKey(name: 'iso31661') String iso31661,
            @JsonKey(name: 'key') String key,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'site') String site,
            @JsonKey(name: 'size') int size,
            @JsonKey(name: 'type') String type),
    @required
        TResult review(
            @JsonKey(name: "id") String id,
            @JsonKey(name: "author") String author,
            @JsonKey(name: "content") String content,
            @JsonKey(name: "url") String url),
  }) {
    assert(movie != null);
    assert(trailer != null);
    assert(review != null);
    return movie(
        posterPath,
        adult,
        overview,
        releaseDate,
        genreIds,
        id,
        originalLanguage,
        title,
        originalTitle,
        name,
        originalName,
        backdropPath,
        popularity,
        voteCount,
        video,
        voteAverage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult movie(
        @JsonKey(name: "poster_path") String posterPath,
        @JsonKey(name: "adult") bool adult,
        @JsonKey(name: "overview") String overview,
        @JsonKey(name: "release_date") String releaseDate,
        @JsonKey(name: "genre_ids") List<int> genreIds,
        @JsonKey(name: "id") int id,
        @JsonKey(name: "original_language") String originalLanguage,
        @JsonKey(name: "title") String title,
        @JsonKey(name: "original_title") String originalTitle,
        @JsonKey(name: "name") String name,
        @JsonKey(name: "original_name") String originalName,
        @JsonKey(name: "backdrop_path") String backdropPath,
        @JsonKey(name: "popularity") double popularity,
        @JsonKey(name: "vote_count") int voteCount,
        @JsonKey(name: "video") bool video,
        @JsonKey(name: "vote_average") double voteAverage),
    TResult trailer(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'iso6391') String iso6391,
        @JsonKey(name: 'iso31661') String iso31661,
        @JsonKey(name: 'key') String key,
        @JsonKey(name: 'name') String name,
        @JsonKey(name: 'site') String site,
        @JsonKey(name: 'size') int size,
        @JsonKey(name: 'type') String type),
    TResult review(
        @JsonKey(name: "id") String id,
        @JsonKey(name: "author") String author,
        @JsonKey(name: "content") String content,
        @JsonKey(name: "url") String url),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (movie != null) {
      return movie(
          posterPath,
          adult,
          overview,
          releaseDate,
          genreIds,
          id,
          originalLanguage,
          title,
          originalTitle,
          name,
          originalName,
          backdropPath,
          popularity,
          voteCount,
          video,
          voteAverage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult movie(Movie value),
    @required TResult trailer(Trailer value),
    @required TResult review(Review value),
  }) {
    assert(movie != null);
    assert(trailer != null);
    assert(review != null);
    return movie(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult movie(Movie value),
    TResult trailer(Trailer value),
    TResult review(Review value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (movie != null) {
      return movie(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MovieToJson(this)..['runtimeType'] = 'movie';
  }
}

abstract class Movie implements ResponseType {
  const factory Movie(
      {@JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "adult") bool adult,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "genre_ids") List<int> genreIds,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_language") String originalLanguage,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "original_title") String originalTitle,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "original_name") String originalName,
      @JsonKey(name: "backdrop_path") String backdropPath,
      @JsonKey(name: "popularity") double popularity,
      @JsonKey(name: "vote_count") int voteCount,
      @JsonKey(name: "video") bool video,
      @JsonKey(name: "vote_average") double voteAverage}) = _$Movie;

  factory Movie.fromJson(Map<String, dynamic> json) = _$Movie.fromJson;

  @JsonKey(name: "poster_path")
  String get posterPath;
  @JsonKey(name: "adult")
  bool get adult;
  @JsonKey(name: "overview")
  String get overview;
  @JsonKey(name: "release_date")
  String get releaseDate;
  @JsonKey(name: "genre_ids")
  List<int> get genreIds;
  @JsonKey(name: "id")
  int get id;
  @JsonKey(name: "original_language")
  String get originalLanguage;
  @JsonKey(name: "title")
  String get title;
  @JsonKey(name: "original_title")
  String get originalTitle;
  @JsonKey(name: "name")
  String get name;
  @JsonKey(name: "original_name")
  String get originalName;
  @JsonKey(name: "backdrop_path")
  String get backdropPath;
  @JsonKey(name: "popularity")
  double get popularity;
  @JsonKey(name: "vote_count")
  int get voteCount;
  @JsonKey(name: "video")
  bool get video;
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith;
}

/// @nodoc
abstract class $TrailerCopyWith<$Res> {
  factory $TrailerCopyWith(Trailer value, $Res Function(Trailer) then) =
      _$TrailerCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'iso6391') String iso6391,
      @JsonKey(name: 'iso31661') String iso31661,
      @JsonKey(name: 'key') String key,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'site') String site,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class _$TrailerCopyWithImpl<$Res> extends _$ResponseTypeCopyWithImpl<$Res>
    implements $TrailerCopyWith<$Res> {
  _$TrailerCopyWithImpl(Trailer _value, $Res Function(Trailer) _then)
      : super(_value, (v) => _then(v as Trailer));

  @override
  Trailer get _value => super._value as Trailer;

  @override
  $Res call({
    Object id = freezed,
    Object iso6391 = freezed,
    Object iso31661 = freezed,
    Object key = freezed,
    Object name = freezed,
    Object site = freezed,
    Object size = freezed,
    Object type = freezed,
  }) {
    return _then(Trailer(
      id: id == freezed ? _value.id : id as String,
      iso6391: iso6391 == freezed ? _value.iso6391 : iso6391 as String,
      iso31661: iso31661 == freezed ? _value.iso31661 : iso31661 as String,
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
      site: site == freezed ? _value.site : site as String,
      size: size == freezed ? _value.size : size as int,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Trailer implements Trailer {
  const _$Trailer(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'iso6391') this.iso6391,
      @JsonKey(name: 'iso31661') this.iso31661,
      @JsonKey(name: 'key') this.key,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'site') this.site,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'type') this.type});

  factory _$Trailer.fromJson(Map<String, dynamic> json) =>
      _$_$TrailerFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'iso6391')
  final String iso6391;
  @override
  @JsonKey(name: 'iso31661')
  final String iso31661;
  @override
  @JsonKey(name: 'key')
  final String key;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'site')
  final String site;
  @override
  @JsonKey(name: 'size')
  final int size;
  @override
  @JsonKey(name: 'type')
  final String type;

  @override
  String toString() {
    return 'ResponseType.trailer(id: $id, iso6391: $iso6391, iso31661: $iso31661, key: $key, name: $name, site: $site, size: $size, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Trailer &&
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
  $TrailerCopyWith<Trailer> get copyWith =>
      _$TrailerCopyWithImpl<Trailer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult movie(
            @JsonKey(name: "poster_path") String posterPath,
            @JsonKey(name: "adult") bool adult,
            @JsonKey(name: "overview") String overview,
            @JsonKey(name: "release_date") String releaseDate,
            @JsonKey(name: "genre_ids") List<int> genreIds,
            @JsonKey(name: "id") int id,
            @JsonKey(name: "original_language") String originalLanguage,
            @JsonKey(name: "title") String title,
            @JsonKey(name: "original_title") String originalTitle,
            @JsonKey(name: "name") String name,
            @JsonKey(name: "original_name") String originalName,
            @JsonKey(name: "backdrop_path") String backdropPath,
            @JsonKey(name: "popularity") double popularity,
            @JsonKey(name: "vote_count") int voteCount,
            @JsonKey(name: "video") bool video,
            @JsonKey(name: "vote_average") double voteAverage),
    @required
        TResult trailer(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'iso6391') String iso6391,
            @JsonKey(name: 'iso31661') String iso31661,
            @JsonKey(name: 'key') String key,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'site') String site,
            @JsonKey(name: 'size') int size,
            @JsonKey(name: 'type') String type),
    @required
        TResult review(
            @JsonKey(name: "id") String id,
            @JsonKey(name: "author") String author,
            @JsonKey(name: "content") String content,
            @JsonKey(name: "url") String url),
  }) {
    assert(movie != null);
    assert(trailer != null);
    assert(review != null);
    return trailer(id, iso6391, iso31661, key, name, site, size, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult movie(
        @JsonKey(name: "poster_path") String posterPath,
        @JsonKey(name: "adult") bool adult,
        @JsonKey(name: "overview") String overview,
        @JsonKey(name: "release_date") String releaseDate,
        @JsonKey(name: "genre_ids") List<int> genreIds,
        @JsonKey(name: "id") int id,
        @JsonKey(name: "original_language") String originalLanguage,
        @JsonKey(name: "title") String title,
        @JsonKey(name: "original_title") String originalTitle,
        @JsonKey(name: "name") String name,
        @JsonKey(name: "original_name") String originalName,
        @JsonKey(name: "backdrop_path") String backdropPath,
        @JsonKey(name: "popularity") double popularity,
        @JsonKey(name: "vote_count") int voteCount,
        @JsonKey(name: "video") bool video,
        @JsonKey(name: "vote_average") double voteAverage),
    TResult trailer(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'iso6391') String iso6391,
        @JsonKey(name: 'iso31661') String iso31661,
        @JsonKey(name: 'key') String key,
        @JsonKey(name: 'name') String name,
        @JsonKey(name: 'site') String site,
        @JsonKey(name: 'size') int size,
        @JsonKey(name: 'type') String type),
    TResult review(
        @JsonKey(name: "id") String id,
        @JsonKey(name: "author") String author,
        @JsonKey(name: "content") String content,
        @JsonKey(name: "url") String url),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (trailer != null) {
      return trailer(id, iso6391, iso31661, key, name, site, size, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult movie(Movie value),
    @required TResult trailer(Trailer value),
    @required TResult review(Review value),
  }) {
    assert(movie != null);
    assert(trailer != null);
    assert(review != null);
    return trailer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult movie(Movie value),
    TResult trailer(Trailer value),
    TResult review(Review value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (trailer != null) {
      return trailer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TrailerToJson(this)..['runtimeType'] = 'trailer';
  }
}

abstract class Trailer implements ResponseType {
  const factory Trailer(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'iso6391') String iso6391,
      @JsonKey(name: 'iso31661') String iso31661,
      @JsonKey(name: 'key') String key,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'site') String site,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'type') String type}) = _$Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) = _$Trailer.fromJson;

  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'iso6391')
  String get iso6391;
  @JsonKey(name: 'iso31661')
  String get iso31661;
  @JsonKey(name: 'key')
  String get key;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'site')
  String get site;
  @JsonKey(name: 'size')
  int get size;
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(ignore: true)
  $TrailerCopyWith<Trailer> get copyWith;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "author") String author,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "url") String url});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> extends _$ResponseTypeCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(Review _value, $Res Function(Review) _then)
      : super(_value, (v) => _then(v as Review));

  @override
  Review get _value => super._value as Review;

  @override
  $Res call({
    Object id = freezed,
    Object author = freezed,
    Object content = freezed,
    Object url = freezed,
  }) {
    return _then(Review(
      id: id == freezed ? _value.id : id as String,
      author: author == freezed ? _value.author : author as String,
      content: content == freezed ? _value.content : content as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Review implements Review {
  const _$Review(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "url") this.url});

  factory _$Review.fromJson(Map<String, dynamic> json) =>
      _$_$ReviewFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "author")
  final String author;
  @override
  @JsonKey(name: "content")
  final String content;
  @override
  @JsonKey(name: "url")
  final String url;

  @override
  String toString() {
    return 'ResponseType.review(id: $id, author: $author, content: $content, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Review &&
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
  $ReviewCopyWith<Review> get copyWith =>
      _$ReviewCopyWithImpl<Review>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult movie(
            @JsonKey(name: "poster_path") String posterPath,
            @JsonKey(name: "adult") bool adult,
            @JsonKey(name: "overview") String overview,
            @JsonKey(name: "release_date") String releaseDate,
            @JsonKey(name: "genre_ids") List<int> genreIds,
            @JsonKey(name: "id") int id,
            @JsonKey(name: "original_language") String originalLanguage,
            @JsonKey(name: "title") String title,
            @JsonKey(name: "original_title") String originalTitle,
            @JsonKey(name: "name") String name,
            @JsonKey(name: "original_name") String originalName,
            @JsonKey(name: "backdrop_path") String backdropPath,
            @JsonKey(name: "popularity") double popularity,
            @JsonKey(name: "vote_count") int voteCount,
            @JsonKey(name: "video") bool video,
            @JsonKey(name: "vote_average") double voteAverage),
    @required
        TResult trailer(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'iso6391') String iso6391,
            @JsonKey(name: 'iso31661') String iso31661,
            @JsonKey(name: 'key') String key,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'site') String site,
            @JsonKey(name: 'size') int size,
            @JsonKey(name: 'type') String type),
    @required
        TResult review(
            @JsonKey(name: "id") String id,
            @JsonKey(name: "author") String author,
            @JsonKey(name: "content") String content,
            @JsonKey(name: "url") String url),
  }) {
    assert(movie != null);
    assert(trailer != null);
    assert(review != null);
    return review(id, author, content, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult movie(
        @JsonKey(name: "poster_path") String posterPath,
        @JsonKey(name: "adult") bool adult,
        @JsonKey(name: "overview") String overview,
        @JsonKey(name: "release_date") String releaseDate,
        @JsonKey(name: "genre_ids") List<int> genreIds,
        @JsonKey(name: "id") int id,
        @JsonKey(name: "original_language") String originalLanguage,
        @JsonKey(name: "title") String title,
        @JsonKey(name: "original_title") String originalTitle,
        @JsonKey(name: "name") String name,
        @JsonKey(name: "original_name") String originalName,
        @JsonKey(name: "backdrop_path") String backdropPath,
        @JsonKey(name: "popularity") double popularity,
        @JsonKey(name: "vote_count") int voteCount,
        @JsonKey(name: "video") bool video,
        @JsonKey(name: "vote_average") double voteAverage),
    TResult trailer(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'iso6391') String iso6391,
        @JsonKey(name: 'iso31661') String iso31661,
        @JsonKey(name: 'key') String key,
        @JsonKey(name: 'name') String name,
        @JsonKey(name: 'site') String site,
        @JsonKey(name: 'size') int size,
        @JsonKey(name: 'type') String type),
    TResult review(
        @JsonKey(name: "id") String id,
        @JsonKey(name: "author") String author,
        @JsonKey(name: "content") String content,
        @JsonKey(name: "url") String url),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (review != null) {
      return review(id, author, content, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult movie(Movie value),
    @required TResult trailer(Trailer value),
    @required TResult review(Review value),
  }) {
    assert(movie != null);
    assert(trailer != null);
    assert(review != null);
    return review(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult movie(Movie value),
    TResult trailer(Trailer value),
    TResult review(Review value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (review != null) {
      return review(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ReviewToJson(this)..['runtimeType'] = 'review';
  }
}

abstract class Review implements ResponseType {
  const factory Review(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "author") String author,
      @JsonKey(name: "content") String content,
      @JsonKey(name: "url") String url}) = _$Review;

  factory Review.fromJson(Map<String, dynamic> json) = _$Review.fromJson;

  @JsonKey(name: "id")
  String get id;
  @JsonKey(name: "author")
  String get author;
  @JsonKey(name: "content")
  String get content;
  @JsonKey(name: "url")
  String get url;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith;
}
