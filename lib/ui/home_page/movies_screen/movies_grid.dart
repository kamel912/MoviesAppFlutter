import 'package:flutter/material.dart';
import 'package:tester_app/models/response_type/models.dart';
import 'package:tester_app/ui/home_page/movies_screen/movie_item.dart';

class MoviesGrid extends StatelessWidget {
  const MoviesGrid({
    Key? key,
    required this.movies,
    required this.crossAxisCount,
  }) : super(key: key);

  final List<Movie> movies;

  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overScrollIndicatorNotification) {
        overScrollIndicatorNotification.disallowGlow();
        return true;
      },
      child: GridView.count(
        crossAxisCount: crossAxisCount,
        shrinkWrap: true,
        childAspectRatio: 0.7,
        children: movies
            .map(
              (movie) => Container(
                padding: EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 8.0,
                  left: 8.0,
                ),
                child: MovieItem(
                  movie: movie,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
