// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'path_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainPathTearOff {
  const _$MainPathTearOff();

  MoviesPath movies(
      {String title = 'Movie', int index = 0, String url = 'movie'}) {
    return MoviesPath(
      title: title,
      index: index,
      url: url,
    );
  }

  TVPath tv({String title = 'TV', int index = 1, String url = 'tv'}) {
    return TVPath(
      title: title,
      index: index,
      url: url,
    );
  }
}

/// @nodoc
const $MainPath = _$MainPathTearOff();

/// @nodoc
mixin _$MainPath {
  String get title => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int index, String url) movies,
    required TResult Function(String title, int index, String url) tv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int index, String url)? movies,
    TResult Function(String title, int index, String url)? tv,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesPath value) movies,
    required TResult Function(TVPath value) tv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesPath value)? movies,
    TResult Function(TVPath value)? tv,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPathCopyWith<MainPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPathCopyWith<$Res> {
  factory $MainPathCopyWith(MainPath value, $Res Function(MainPath) then) =
      _$MainPathCopyWithImpl<$Res>;
  $Res call({String title, int index, String url});
}

/// @nodoc
class _$MainPathCopyWithImpl<$Res> implements $MainPathCopyWith<$Res> {
  _$MainPathCopyWithImpl(this._value, this._then);

  final MainPath _value;
  // ignore: unused_field
  final $Res Function(MainPath) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $MoviesPathCopyWith<$Res> implements $MainPathCopyWith<$Res> {
  factory $MoviesPathCopyWith(
          MoviesPath value, $Res Function(MoviesPath) then) =
      _$MoviesPathCopyWithImpl<$Res>;
  @override
  $Res call({String title, int index, String url});
}

/// @nodoc
class _$MoviesPathCopyWithImpl<$Res> extends _$MainPathCopyWithImpl<$Res>
    implements $MoviesPathCopyWith<$Res> {
  _$MoviesPathCopyWithImpl(MoviesPath _value, $Res Function(MoviesPath) _then)
      : super(_value, (v) => _then(v as MoviesPath));

  @override
  MoviesPath get _value => super._value as MoviesPath;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? url = freezed,
  }) {
    return _then(MoviesPath(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MoviesPath implements MoviesPath {
  const _$MoviesPath(
      {this.title = 'Movie', this.index = 0, this.url = 'movie'});

  @JsonKey(defaultValue: 'Movie')
  @override
  final String title;
  @JsonKey(defaultValue: 0)
  @override
  final int index;
  @JsonKey(defaultValue: 'movie')
  @override
  final String url;

  @override
  String toString() {
    return 'MainPath.movies(title: $title, index: $index, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MoviesPath &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $MoviesPathCopyWith<MoviesPath> get copyWith =>
      _$MoviesPathCopyWithImpl<MoviesPath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int index, String url) movies,
    required TResult Function(String title, int index, String url) tv,
  }) {
    return movies(title, index, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int index, String url)? movies,
    TResult Function(String title, int index, String url)? tv,
    required TResult orElse(),
  }) {
    if (movies != null) {
      return movies(title, index, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesPath value) movies,
    required TResult Function(TVPath value) tv,
  }) {
    return movies(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesPath value)? movies,
    TResult Function(TVPath value)? tv,
    required TResult orElse(),
  }) {
    if (movies != null) {
      return movies(this);
    }
    return orElse();
  }
}

abstract class MoviesPath implements MainPath {
  const factory MoviesPath({String title, int index, String url}) =
      _$MoviesPath;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get index => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MoviesPathCopyWith<MoviesPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TVPathCopyWith<$Res> implements $MainPathCopyWith<$Res> {
  factory $TVPathCopyWith(TVPath value, $Res Function(TVPath) then) =
      _$TVPathCopyWithImpl<$Res>;
  @override
  $Res call({String title, int index, String url});
}

/// @nodoc
class _$TVPathCopyWithImpl<$Res> extends _$MainPathCopyWithImpl<$Res>
    implements $TVPathCopyWith<$Res> {
  _$TVPathCopyWithImpl(TVPath _value, $Res Function(TVPath) _then)
      : super(_value, (v) => _then(v as TVPath));

  @override
  TVPath get _value => super._value as TVPath;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? url = freezed,
  }) {
    return _then(TVPath(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TVPath implements TVPath {
  const _$TVPath({this.title = 'TV', this.index = 1, this.url = 'tv'});

  @JsonKey(defaultValue: 'TV')
  @override
  final String title;
  @JsonKey(defaultValue: 1)
  @override
  final int index;
  @JsonKey(defaultValue: 'tv')
  @override
  final String url;

  @override
  String toString() {
    return 'MainPath.tv(title: $title, index: $index, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TVPath &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $TVPathCopyWith<TVPath> get copyWith =>
      _$TVPathCopyWithImpl<TVPath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int index, String url) movies,
    required TResult Function(String title, int index, String url) tv,
  }) {
    return tv(title, index, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int index, String url)? movies,
    TResult Function(String title, int index, String url)? tv,
    required TResult orElse(),
  }) {
    if (tv != null) {
      return tv(title, index, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesPath value) movies,
    required TResult Function(TVPath value) tv,
  }) {
    return tv(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesPath value)? movies,
    TResult Function(TVPath value)? tv,
    required TResult orElse(),
  }) {
    if (tv != null) {
      return tv(this);
    }
    return orElse();
  }
}

abstract class TVPath implements MainPath {
  const factory TVPath({String title, int index, String url}) = _$TVPath;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get index => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TVPathCopyWith<TVPath> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TypePathTearOff {
  const _$TypePathTearOff();

  Popular popular(
      {String title = 'Popular', int index = 0, String url = 'popular'}) {
    return Popular(
      title: title,
      index: index,
      url: url,
    );
  }

  TopRated topRated(
      {String title = 'Top rated', int index = 1, String url = 'top_rated'}) {
    return TopRated(
      title: title,
      index: index,
      url: url,
    );
  }

  Upcoming upcoming(
      {String title = 'Upcoming', int index = 2, String url = 'upcoming'}) {
    return Upcoming(
      title: title,
      index: index,
      url: url,
    );
  }

  NowPlaying nowPlaying(
      {String title = 'Now playing',
      int index = 3,
      String url = 'now_playing'}) {
    return NowPlaying(
      title: title,
      index: index,
      url: url,
    );
  }
}

/// @nodoc
const $TypePath = _$TypePathTearOff();

/// @nodoc
mixin _$TypePath {
  String get title => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int index, String url) popular,
    required TResult Function(String title, int index, String url) topRated,
    required TResult Function(String title, int index, String url) upcoming,
    required TResult Function(String title, int index, String url) nowPlaying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int index, String url)? popular,
    TResult Function(String title, int index, String url)? topRated,
    TResult Function(String title, int index, String url)? upcoming,
    TResult Function(String title, int index, String url)? nowPlaying,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Popular value) popular,
    required TResult Function(TopRated value) topRated,
    required TResult Function(Upcoming value) upcoming,
    required TResult Function(NowPlaying value) nowPlaying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Popular value)? popular,
    TResult Function(TopRated value)? topRated,
    TResult Function(Upcoming value)? upcoming,
    TResult Function(NowPlaying value)? nowPlaying,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TypePathCopyWith<TypePath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypePathCopyWith<$Res> {
  factory $TypePathCopyWith(TypePath value, $Res Function(TypePath) then) =
      _$TypePathCopyWithImpl<$Res>;
  $Res call({String title, int index, String url});
}

/// @nodoc
class _$TypePathCopyWithImpl<$Res> implements $TypePathCopyWith<$Res> {
  _$TypePathCopyWithImpl(this._value, this._then);

  final TypePath _value;
  // ignore: unused_field
  final $Res Function(TypePath) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $PopularCopyWith<$Res> implements $TypePathCopyWith<$Res> {
  factory $PopularCopyWith(Popular value, $Res Function(Popular) then) =
      _$PopularCopyWithImpl<$Res>;
  @override
  $Res call({String title, int index, String url});
}

/// @nodoc
class _$PopularCopyWithImpl<$Res> extends _$TypePathCopyWithImpl<$Res>
    implements $PopularCopyWith<$Res> {
  _$PopularCopyWithImpl(Popular _value, $Res Function(Popular) _then)
      : super(_value, (v) => _then(v as Popular));

  @override
  Popular get _value => super._value as Popular;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? url = freezed,
  }) {
    return _then(Popular(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Popular implements Popular {
  const _$Popular(
      {this.title = 'Popular', this.index = 0, this.url = 'popular'});

  @JsonKey(defaultValue: 'Popular')
  @override
  final String title;
  @JsonKey(defaultValue: 0)
  @override
  final int index;
  @JsonKey(defaultValue: 'popular')
  @override
  final String url;

  @override
  String toString() {
    return 'TypePath.popular(title: $title, index: $index, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Popular &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $PopularCopyWith<Popular> get copyWith =>
      _$PopularCopyWithImpl<Popular>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int index, String url) popular,
    required TResult Function(String title, int index, String url) topRated,
    required TResult Function(String title, int index, String url) upcoming,
    required TResult Function(String title, int index, String url) nowPlaying,
  }) {
    return popular(title, index, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int index, String url)? popular,
    TResult Function(String title, int index, String url)? topRated,
    TResult Function(String title, int index, String url)? upcoming,
    TResult Function(String title, int index, String url)? nowPlaying,
    required TResult orElse(),
  }) {
    if (popular != null) {
      return popular(title, index, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Popular value) popular,
    required TResult Function(TopRated value) topRated,
    required TResult Function(Upcoming value) upcoming,
    required TResult Function(NowPlaying value) nowPlaying,
  }) {
    return popular(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Popular value)? popular,
    TResult Function(TopRated value)? topRated,
    TResult Function(Upcoming value)? upcoming,
    TResult Function(NowPlaying value)? nowPlaying,
    required TResult orElse(),
  }) {
    if (popular != null) {
      return popular(this);
    }
    return orElse();
  }
}

abstract class Popular implements TypePath {
  const factory Popular({String title, int index, String url}) = _$Popular;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get index => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PopularCopyWith<Popular> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedCopyWith<$Res> implements $TypePathCopyWith<$Res> {
  factory $TopRatedCopyWith(TopRated value, $Res Function(TopRated) then) =
      _$TopRatedCopyWithImpl<$Res>;
  @override
  $Res call({String title, int index, String url});
}

/// @nodoc
class _$TopRatedCopyWithImpl<$Res> extends _$TypePathCopyWithImpl<$Res>
    implements $TopRatedCopyWith<$Res> {
  _$TopRatedCopyWithImpl(TopRated _value, $Res Function(TopRated) _then)
      : super(_value, (v) => _then(v as TopRated));

  @override
  TopRated get _value => super._value as TopRated;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? url = freezed,
  }) {
    return _then(TopRated(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TopRated implements TopRated {
  const _$TopRated(
      {this.title = 'Top rated', this.index = 1, this.url = 'top_rated'});

  @JsonKey(defaultValue: 'Top rated')
  @override
  final String title;
  @JsonKey(defaultValue: 1)
  @override
  final int index;
  @JsonKey(defaultValue: 'top_rated')
  @override
  final String url;

  @override
  String toString() {
    return 'TypePath.topRated(title: $title, index: $index, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TopRated &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $TopRatedCopyWith<TopRated> get copyWith =>
      _$TopRatedCopyWithImpl<TopRated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int index, String url) popular,
    required TResult Function(String title, int index, String url) topRated,
    required TResult Function(String title, int index, String url) upcoming,
    required TResult Function(String title, int index, String url) nowPlaying,
  }) {
    return topRated(title, index, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int index, String url)? popular,
    TResult Function(String title, int index, String url)? topRated,
    TResult Function(String title, int index, String url)? upcoming,
    TResult Function(String title, int index, String url)? nowPlaying,
    required TResult orElse(),
  }) {
    if (topRated != null) {
      return topRated(title, index, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Popular value) popular,
    required TResult Function(TopRated value) topRated,
    required TResult Function(Upcoming value) upcoming,
    required TResult Function(NowPlaying value) nowPlaying,
  }) {
    return topRated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Popular value)? popular,
    TResult Function(TopRated value)? topRated,
    TResult Function(Upcoming value)? upcoming,
    TResult Function(NowPlaying value)? nowPlaying,
    required TResult orElse(),
  }) {
    if (topRated != null) {
      return topRated(this);
    }
    return orElse();
  }
}

abstract class TopRated implements TypePath {
  const factory TopRated({String title, int index, String url}) = _$TopRated;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get index => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TopRatedCopyWith<TopRated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingCopyWith<$Res> implements $TypePathCopyWith<$Res> {
  factory $UpcomingCopyWith(Upcoming value, $Res Function(Upcoming) then) =
      _$UpcomingCopyWithImpl<$Res>;
  @override
  $Res call({String title, int index, String url});
}

/// @nodoc
class _$UpcomingCopyWithImpl<$Res> extends _$TypePathCopyWithImpl<$Res>
    implements $UpcomingCopyWith<$Res> {
  _$UpcomingCopyWithImpl(Upcoming _value, $Res Function(Upcoming) _then)
      : super(_value, (v) => _then(v as Upcoming));

  @override
  Upcoming get _value => super._value as Upcoming;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? url = freezed,
  }) {
    return _then(Upcoming(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Upcoming implements Upcoming {
  const _$Upcoming(
      {this.title = 'Upcoming', this.index = 2, this.url = 'upcoming'});

  @JsonKey(defaultValue: 'Upcoming')
  @override
  final String title;
  @JsonKey(defaultValue: 2)
  @override
  final int index;
  @JsonKey(defaultValue: 'upcoming')
  @override
  final String url;

  @override
  String toString() {
    return 'TypePath.upcoming(title: $title, index: $index, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Upcoming &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $UpcomingCopyWith<Upcoming> get copyWith =>
      _$UpcomingCopyWithImpl<Upcoming>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int index, String url) popular,
    required TResult Function(String title, int index, String url) topRated,
    required TResult Function(String title, int index, String url) upcoming,
    required TResult Function(String title, int index, String url) nowPlaying,
  }) {
    return upcoming(title, index, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int index, String url)? popular,
    TResult Function(String title, int index, String url)? topRated,
    TResult Function(String title, int index, String url)? upcoming,
    TResult Function(String title, int index, String url)? nowPlaying,
    required TResult orElse(),
  }) {
    if (upcoming != null) {
      return upcoming(title, index, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Popular value) popular,
    required TResult Function(TopRated value) topRated,
    required TResult Function(Upcoming value) upcoming,
    required TResult Function(NowPlaying value) nowPlaying,
  }) {
    return upcoming(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Popular value)? popular,
    TResult Function(TopRated value)? topRated,
    TResult Function(Upcoming value)? upcoming,
    TResult Function(NowPlaying value)? nowPlaying,
    required TResult orElse(),
  }) {
    if (upcoming != null) {
      return upcoming(this);
    }
    return orElse();
  }
}

abstract class Upcoming implements TypePath {
  const factory Upcoming({String title, int index, String url}) = _$Upcoming;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get index => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UpcomingCopyWith<Upcoming> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingCopyWith<$Res> implements $TypePathCopyWith<$Res> {
  factory $NowPlayingCopyWith(
          NowPlaying value, $Res Function(NowPlaying) then) =
      _$NowPlayingCopyWithImpl<$Res>;
  @override
  $Res call({String title, int index, String url});
}

/// @nodoc
class _$NowPlayingCopyWithImpl<$Res> extends _$TypePathCopyWithImpl<$Res>
    implements $NowPlayingCopyWith<$Res> {
  _$NowPlayingCopyWithImpl(NowPlaying _value, $Res Function(NowPlaying) _then)
      : super(_value, (v) => _then(v as NowPlaying));

  @override
  NowPlaying get _value => super._value as NowPlaying;

  @override
  $Res call({
    Object? title = freezed,
    Object? index = freezed,
    Object? url = freezed,
  }) {
    return _then(NowPlaying(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NowPlaying implements NowPlaying {
  const _$NowPlaying(
      {this.title = 'Now playing', this.index = 3, this.url = 'now_playing'});

  @JsonKey(defaultValue: 'Now playing')
  @override
  final String title;
  @JsonKey(defaultValue: 3)
  @override
  final int index;
  @JsonKey(defaultValue: 'now_playing')
  @override
  final String url;

  @override
  String toString() {
    return 'TypePath.nowPlaying(title: $title, index: $index, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NowPlaying &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $NowPlayingCopyWith<NowPlaying> get copyWith =>
      _$NowPlayingCopyWithImpl<NowPlaying>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int index, String url) popular,
    required TResult Function(String title, int index, String url) topRated,
    required TResult Function(String title, int index, String url) upcoming,
    required TResult Function(String title, int index, String url) nowPlaying,
  }) {
    return nowPlaying(title, index, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int index, String url)? popular,
    TResult Function(String title, int index, String url)? topRated,
    TResult Function(String title, int index, String url)? upcoming,
    TResult Function(String title, int index, String url)? nowPlaying,
    required TResult orElse(),
  }) {
    if (nowPlaying != null) {
      return nowPlaying(title, index, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Popular value) popular,
    required TResult Function(TopRated value) topRated,
    required TResult Function(Upcoming value) upcoming,
    required TResult Function(NowPlaying value) nowPlaying,
  }) {
    return nowPlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Popular value)? popular,
    TResult Function(TopRated value)? topRated,
    TResult Function(Upcoming value)? upcoming,
    TResult Function(NowPlaying value)? nowPlaying,
    required TResult orElse(),
  }) {
    if (nowPlaying != null) {
      return nowPlaying(this);
    }
    return orElse();
  }
}

abstract class NowPlaying implements TypePath {
  const factory NowPlaying({String title, int index, String url}) =
      _$NowPlaying;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get index => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NowPlayingCopyWith<NowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}
