import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tester_app/utils/movies_db_extensions.dart';

part 'path_provider.freezed.dart';

@freezed
abstract class MainPath with _$MainPath {
  const factory MainPath.movies({
    @Default('Movie') String title,
    @Default(0) int index,
    @Default('movie') String url,
  }) = MoviesPath;

  const factory MainPath.tv({
    @Default('TV') String title,
    @Default(1) int index,
    @Default('tv') String url,
  }) = TVPath;
}

class MainPathProvider extends StateNotifier<MainPath> with LocatorMixin {
  final BuildContext context;

  MainPathProvider(this.context) : super(const MoviesPath());

  List<MainPath> get mainPathList => <MainPath>[
        MoviesPath(
            // title: AppLocalizations.of(context).movie,
            ),
        TVPath(
            // title: AppLocalizations.of(context).tv,
            ),
      ];
}

@freezed
abstract class TypePath with _$TypePath {
  const factory TypePath.popular({
    @Default('Popular') String title,
    @Default(0) int index,
    @Default('popular') String url,
  }) = Popular;

  const factory TypePath.topRated({
    @Default('Top rated') String title,
    @Default(1) int index,
    @Default('top_rated') String url,
  }) = TopRated;

  const factory TypePath.upcoming({
    @Default('Upcoming') String title,
    @Default(2) int index,
    @Default('upcoming') String url,
  }) = Upcoming;

  const factory TypePath.nowPlaying({
    @Default('Now playing') String title,
    @Default(3) int index,
    @Default('now_playing') String url,
  }) = NowPlaying;
}

class TypePathProvider extends StateNotifier<TypePath> with LocatorMixin {
  TypePathProvider() : super(const Popular());
}

class TypePathListProvider extends StateNotifier<List<TypePath>> with LocatorMixin {
  TypePathListProvider()
      : super([
          Popular(),
          TopRated(),
          Upcoming(),
          NowPlaying(),
        ]);
  List<TypePath> baseList = [
    Popular(),
    TopRated(),
    Upcoming(),
    NowPlaying(),
  ];

  List<TypePath> get current {
    return state = read<MainPathProvider>().state.when(
          movies: (_, __, ___) => baseList,
          tv: (_, __, ___) => baseList.splitTo(2),
        );
  }
}
