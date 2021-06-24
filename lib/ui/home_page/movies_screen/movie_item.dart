import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/data/api/base_urls.dart';
import 'package:tester_app/di/providers/details_provider.dart';
import 'package:tester_app/di/providers/path_providers/path_provider.dart';
import 'package:tester_app/models/response_type/models.dart';
import 'package:tester_app/ui/base_widgets/base_constants/base_border.dart';
import 'package:tester_app/ui/router/route_path.dart';
import 'package:tester_app/ui/router/router_provider.dart';
import 'package:tester_app/utils/hive_utils.dart';
import 'package:tester_app/utils/movies_db_extensions.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  MovieItem({
    required this.movie,
  });

  @override
  Widget build(BuildContext context) => FlipCard(
        key: cardKey,
        flipOnTouch: false,
        front: _ItemCardFront(movie: movie, cardKey: cardKey),
        back: _ItemCardBack(movie: movie, cardKey: cardKey),
      );
}

class _ItemCardBack extends StatelessWidget {
  const _ItemCardBack({
    Key? key,
    required this.movie,
    required this.cardKey,
  }) : super(key: key);

  final Movie movie;
  final GlobalKey<FlipCardState> cardKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: ReversedBaseBorderRadiusDirectional.all(),
        color: Theme.of(context).primaryColor,
      ),
      child: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  cardKey.currentState!.toggleCard();
                },
                child: Icon(
                  Icons.close,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            Text(
              movie.title ?? movie.name!,
              style: TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
            ),
            Divider(
              height: 8.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  movie.overview!,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).accentColor,
            ),
            Consumer2<RouterProvider, DetailsProvider>(
              builder: (context, routerProvider, movieDetailsProvider, child) => InkWell(
                onTap: () {
                  movieDetailsProvider.movie = movie;
                  routerProvider.current = DetailsRoutePath();
                },
                child: Center(
                  child: Text(
                    'Show full details',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemCardFront extends StatelessWidget {
  const _ItemCardFront({
    Key? key,
    required this.movie,
    required this.cardKey,
  }) : super(key: key);

  final Movie movie;
  final GlobalKey<FlipCardState> cardKey;

  @override
  Widget build(BuildContext context) {
    final String movieKey =
        '${movie.id}_${context.watch<Locale>().languageCode}_${context.watch<MainPath>().index}';
    final Box<Movie> movieBox = HiveHelper.favoritesBox;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('$smallPoster${movie.posterPath}'),
              onError: (exception, stackTrace) {
                print(exception);
              },
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
            ),
            borderRadius: BaseBorderRadiusDirectional.all(),
            color: Theme.of(context).primaryColor,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          bottom: 0,
          left: 0,
          child: Material(
            color: Colors.transparent,
            child: Consumer2<RouterProvider, DetailsProvider>(
              builder: (context, routerProvider, movieDetailsProvider, child) => InkWell(
                onTap: () {
                  movieDetailsProvider.movie = movie;
                  routerProvider.current = DetailsRoutePath();
                },
                borderRadius: BaseBorderRadiusDirectional.all().resolveSuper(context),
              ),
            ),
          ),
        ),
        Positioned.directional(
          top: 8,
          start: 8,
          textDirection: context.watch<Locale>().textDirection,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                cardKey.currentState!.toggleCard();
              },
              child: Icon(Icons.info),
            ),
          ),
        ),
        Positioned.directional(
          top: 8,
          end: 8,
          textDirection: context.watch<Locale>().textDirection,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                movieBox.containsKey(movieKey)
                    ? movieBox.delete(movieKey)
                    : movieBox.put(movieKey, movie);
              },
              child: ValueListenableBuilder<Box<Movie>>(
                builder: (context, box, child) {
                  return Icon(box.containsKey(movieKey) ? Icons.favorite : Icons.favorite_border);
                },
                valueListenable: movieBox.listenable(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
