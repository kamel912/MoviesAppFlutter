import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_path.freezed.dart';

@freezed
abstract class RoutePath with _$RoutePath {
  const factory RoutePath.homeRoutePath({
    @Default('/') String location,
  }) = HomeRoutePath;
  const factory RoutePath.detailsRoutePath({
    @Default('/details') String location,
  }) = DetailsRoutePath;
}
