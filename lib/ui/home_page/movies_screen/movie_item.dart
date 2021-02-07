import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/data/api/base_urls.dart';
import 'package:tester_app/di/providers/details_provider.dart';
import 'package:tester_app/models/response_type/response_type.dart';
import 'package:tester_app/ui/base_widgets/base_constants/base_border.dart';
import 'package:tester_app/ui/router/route_path.dart';
import 'package:tester_app/ui/router/router_provider.dart';
import 'package:tester_app/utils/movies_db_extensions.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  MovieItem({
    this.movie,
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
    Key key,
    @required this.movie,
    @required this.cardKey,
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
                  cardKey.currentState.toggleCard();
                },
                child: Icon(
                  Icons.close,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            Text(
              movie.title ?? movie.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 8.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  movie.overview,
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
    Key key,
    @required this.movie,
    @required this.cardKey,
  }) : super(key: key);

  final Movie movie;
  final GlobalKey<FlipCardState> cardKey;

  @override
  Widget build(BuildContext context) {
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
                cardKey.currentState.toggleCard();
              },
              child: Icon(Icons.info),
            ),
          ),
        ),
      ],
    );
  }
}
