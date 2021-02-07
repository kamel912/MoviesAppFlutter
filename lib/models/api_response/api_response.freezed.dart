// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ApiResponse<ResponseType> _$ApiResponseFromJson<ResponseType>(
    Map<String, dynamic> json) {
  return _ApiResponse1<ResponseType>.fromJson(json);
}

/// @nodoc
class _$ApiResponseTearOff {
  const _$ApiResponseTearOff();

// ignore: unused_element
  _ApiResponse1<ResponseType> call<ResponseType>(
      {@JsonKey(name: 'page')
          int page,
      @JsonKey(name: 'total_results')
          int totalResults,
      @JsonKey(name: 'total_pages')
          int totalPages,
      @JsonKey(name: 'results')
      @GenericsJsonConverter()
          List<ResponseType> results}) {
    return _ApiResponse1<ResponseType>(
      page: page,
      totalResults: totalResults,
      totalPages: totalPages,
      results: results,
    );
  }

// ignore: unused_element
  ApiResponse<ResponseType> fromJson<ResponseType>(Map<String, Object> json) {
    return ApiResponse<ResponseType>.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ApiResponse = _$ApiResponseTearOff();

/// @nodoc
mixin _$ApiResponse<ResponseType> {
  @JsonKey(name: 'page')
  int get page;
  @JsonKey(name: 'total_results')
  int get totalResults;
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @JsonKey(name: 'results')
  @GenericsJsonConverter()
  List<ResponseType> get results;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ApiResponseCopyWith<ResponseType, ApiResponse<ResponseType>> get copyWith;
}

/// @nodoc
abstract class $ApiResponseCopyWith<ResponseType, $Res> {
  factory $ApiResponseCopyWith(ApiResponse<ResponseType> value,
          $Res Function(ApiResponse<ResponseType>) then) =
      _$ApiResponseCopyWithImpl<ResponseType, $Res>;
  $Res call(
      {@JsonKey(name: 'page')
          int page,
      @JsonKey(name: 'total_results')
          int totalResults,
      @JsonKey(name: 'total_pages')
          int totalPages,
      @JsonKey(name: 'results')
      @GenericsJsonConverter()
          List<ResponseType> results});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<ResponseType, $Res>
    implements $ApiResponseCopyWith<ResponseType, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  final ApiResponse<ResponseType> _value;
  // ignore: unused_field
  final $Res Function(ApiResponse<ResponseType>) _then;

  @override
  $Res call({
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
      results:
          results == freezed ? _value.results : results as List<ResponseType>,
    ));
  }
}

/// @nodoc
abstract class _$ApiResponse1CopyWith<ResponseType, $Res>
    implements $ApiResponseCopyWith<ResponseType, $Res> {
  factory _$ApiResponse1CopyWith(_ApiResponse1<ResponseType> value,
          $Res Function(_ApiResponse1<ResponseType>) then) =
      __$ApiResponse1CopyWithImpl<ResponseType, $Res>;
  @override
  $Res call(
      {@JsonKey(name: 'page')
          int page,
      @JsonKey(name: 'total_results')
          int totalResults,
      @JsonKey(name: 'total_pages')
          int totalPages,
      @JsonKey(name: 'results')
      @GenericsJsonConverter()
          List<ResponseType> results});
}

/// @nodoc
class __$ApiResponse1CopyWithImpl<ResponseType, $Res>
    extends _$ApiResponseCopyWithImpl<ResponseType, $Res>
    implements _$ApiResponse1CopyWith<ResponseType, $Res> {
  __$ApiResponse1CopyWithImpl(_ApiResponse1<ResponseType> _value,
      $Res Function(_ApiResponse1<ResponseType>) _then)
      : super(_value, (v) => _then(v as _ApiResponse1<ResponseType>));

  @override
  _ApiResponse1<ResponseType> get _value =>
      super._value as _ApiResponse1<ResponseType>;

  @override
  $Res call({
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
    Object results = freezed,
  }) {
    return _then(_ApiResponse1<ResponseType>(
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
      results:
          results == freezed ? _value.results : results as List<ResponseType>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ApiResponse1<ResponseType> implements _ApiResponse1<ResponseType> {
  const _$_ApiResponse1(
      {@JsonKey(name: 'page') this.page,
      @JsonKey(name: 'total_results') this.totalResults,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'results') @GenericsJsonConverter() this.results});

  factory _$_ApiResponse1.fromJson(Map<String, dynamic> json) =>
      _$_$_ApiResponse1FromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'results')
  @GenericsJsonConverter()
  final List<ResponseType> results;

  @override
  String toString() {
    return 'ApiResponse<$ResponseType>(page: $page, totalResults: $totalResults, totalPages: $totalPages, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiResponse1<ResponseType> &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality()
                    .equals(other.totalResults, totalResults)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$ApiResponse1CopyWith<ResponseType, _ApiResponse1<ResponseType>>
      get copyWith => __$ApiResponse1CopyWithImpl<ResponseType,
          _ApiResponse1<ResponseType>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApiResponse1ToJson(this);
  }
}

abstract class _ApiResponse1<ResponseType>
    implements ApiResponse<ResponseType> {
  const factory _ApiResponse1(
      {@JsonKey(name: 'page')
          int page,
      @JsonKey(name: 'total_results')
          int totalResults,
      @JsonKey(name: 'total_pages')
          int totalPages,
      @JsonKey(name: 'results')
      @GenericsJsonConverter()
          List<ResponseType> results}) = _$_ApiResponse1<ResponseType>;

  factory _ApiResponse1.fromJson(Map<String, dynamic> json) =
      _$_ApiResponse1<ResponseType>.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'results')
  @GenericsJsonConverter()
  List<ResponseType> get results;
  @override
  @JsonKey(ignore: true)
  _$ApiResponse1CopyWith<ResponseType, _ApiResponse1<ResponseType>>
      get copyWith;
}
