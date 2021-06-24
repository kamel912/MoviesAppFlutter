// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'route_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoutePathTearOff {
  const _$RoutePathTearOff();

  HomeRoutePath homeRoutePath({String location = '/'}) {
    return HomeRoutePath(
      location: location,
    );
  }

  DetailsRoutePath detailsRoutePath({String location = '/details'}) {
    return DetailsRoutePath(
      location: location,
    );
  }
}

/// @nodoc
const $RoutePath = _$RoutePathTearOff();

/// @nodoc
mixin _$RoutePath {
  String get location => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeRoutePath,
    required TResult Function(String location) detailsRoutePath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeRoutePath,
    TResult Function(String location)? detailsRoutePath,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRoutePath value) homeRoutePath,
    required TResult Function(DetailsRoutePath value) detailsRoutePath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRoutePath value)? homeRoutePath,
    TResult Function(DetailsRoutePath value)? detailsRoutePath,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoutePathCopyWith<RoutePath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutePathCopyWith<$Res> {
  factory $RoutePathCopyWith(RoutePath value, $Res Function(RoutePath) then) =
      _$RoutePathCopyWithImpl<$Res>;
  $Res call({String location});
}

/// @nodoc
class _$RoutePathCopyWithImpl<$Res> implements $RoutePathCopyWith<$Res> {
  _$RoutePathCopyWithImpl(this._value, this._then);

  final RoutePath _value;
  // ignore: unused_field
  final $Res Function(RoutePath) _then;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $HomeRoutePathCopyWith<$Res>
    implements $RoutePathCopyWith<$Res> {
  factory $HomeRoutePathCopyWith(
          HomeRoutePath value, $Res Function(HomeRoutePath) then) =
      _$HomeRoutePathCopyWithImpl<$Res>;
  @override
  $Res call({String location});
}

/// @nodoc
class _$HomeRoutePathCopyWithImpl<$Res> extends _$RoutePathCopyWithImpl<$Res>
    implements $HomeRoutePathCopyWith<$Res> {
  _$HomeRoutePathCopyWithImpl(
      HomeRoutePath _value, $Res Function(HomeRoutePath) _then)
      : super(_value, (v) => _then(v as HomeRoutePath));

  @override
  HomeRoutePath get _value => super._value as HomeRoutePath;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(HomeRoutePath(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeRoutePath implements HomeRoutePath {
  const _$HomeRoutePath({this.location = '/'});

  @JsonKey(defaultValue: '/')
  @override
  final String location;

  @override
  String toString() {
    return 'RoutePath.homeRoutePath(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeRoutePath &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $HomeRoutePathCopyWith<HomeRoutePath> get copyWith =>
      _$HomeRoutePathCopyWithImpl<HomeRoutePath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeRoutePath,
    required TResult Function(String location) detailsRoutePath,
  }) {
    return homeRoutePath(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeRoutePath,
    TResult Function(String location)? detailsRoutePath,
    required TResult orElse(),
  }) {
    if (homeRoutePath != null) {
      return homeRoutePath(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRoutePath value) homeRoutePath,
    required TResult Function(DetailsRoutePath value) detailsRoutePath,
  }) {
    return homeRoutePath(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRoutePath value)? homeRoutePath,
    TResult Function(DetailsRoutePath value)? detailsRoutePath,
    required TResult orElse(),
  }) {
    if (homeRoutePath != null) {
      return homeRoutePath(this);
    }
    return orElse();
  }
}

abstract class HomeRoutePath implements RoutePath {
  const factory HomeRoutePath({String location}) = _$HomeRoutePath;

  @override
  String get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $HomeRoutePathCopyWith<HomeRoutePath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsRoutePathCopyWith<$Res>
    implements $RoutePathCopyWith<$Res> {
  factory $DetailsRoutePathCopyWith(
          DetailsRoutePath value, $Res Function(DetailsRoutePath) then) =
      _$DetailsRoutePathCopyWithImpl<$Res>;
  @override
  $Res call({String location});
}

/// @nodoc
class _$DetailsRoutePathCopyWithImpl<$Res> extends _$RoutePathCopyWithImpl<$Res>
    implements $DetailsRoutePathCopyWith<$Res> {
  _$DetailsRoutePathCopyWithImpl(
      DetailsRoutePath _value, $Res Function(DetailsRoutePath) _then)
      : super(_value, (v) => _then(v as DetailsRoutePath));

  @override
  DetailsRoutePath get _value => super._value as DetailsRoutePath;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(DetailsRoutePath(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailsRoutePath implements DetailsRoutePath {
  const _$DetailsRoutePath({this.location = '/details'});

  @JsonKey(defaultValue: '/details')
  @override
  final String location;

  @override
  String toString() {
    return 'RoutePath.detailsRoutePath(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsRoutePath &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $DetailsRoutePathCopyWith<DetailsRoutePath> get copyWith =>
      _$DetailsRoutePathCopyWithImpl<DetailsRoutePath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeRoutePath,
    required TResult Function(String location) detailsRoutePath,
  }) {
    return detailsRoutePath(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeRoutePath,
    TResult Function(String location)? detailsRoutePath,
    required TResult orElse(),
  }) {
    if (detailsRoutePath != null) {
      return detailsRoutePath(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRoutePath value) homeRoutePath,
    required TResult Function(DetailsRoutePath value) detailsRoutePath,
  }) {
    return detailsRoutePath(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRoutePath value)? homeRoutePath,
    TResult Function(DetailsRoutePath value)? detailsRoutePath,
    required TResult orElse(),
  }) {
    if (detailsRoutePath != null) {
      return detailsRoutePath(this);
    }
    return orElse();
  }
}

abstract class DetailsRoutePath implements RoutePath {
  const factory DetailsRoutePath({String location}) = _$DetailsRoutePath;

  @override
  String get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DetailsRoutePathCopyWith<DetailsRoutePath> get copyWith =>
      throw _privateConstructorUsedError;
}
