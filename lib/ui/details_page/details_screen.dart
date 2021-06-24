import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/data/api/base_urls.dart';
import 'package:tester_app/di/providers/details_provider.dart';
import 'package:tester_app/localization/l10n.dart';
import 'package:tester_app/models/response_type/models.dart';
import 'package:tester_app/ui/base_widgets/base_constants/base_border.dart';
import 'package:tester_app/ui/base_widgets/base_state_widget.dart';
import 'package:tester_app/ui/base_widgets/dividers.dart';
import 'package:tester_app/ui/base_widgets/error.dart';
import 'package:tester_app/ui/details_page/review_item.dart';
import 'package:tester_app/ui/details_page/trailer_item.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen();

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    context.read<TrailersProvider>().loadTrailers();
    context.read<ReviewsProvider>().loadReviews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Movie movie = context.watch<DetailsProvider>().movie;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => <Widget>[
          SliverAppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BaseBorderRadiusDirectional.bottom(),
            ),
            expandedHeight: MediaQuery.of(context).size.width > 600 ? 600 : 300,
            pinned: true,
            forceElevated: true,
            floating: true,
            toolbarHeight: kToolbarHeight,
            flexibleSpace: ClipRRect(
              borderRadius: BaseBorderRadiusDirectional.bottom().resolveSuper(context),
              clipBehavior: Clip.hardEdge,
              child: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                stretchModes: [
                  StretchMode.blurBackground,
                ],
                background: Image.network(
                  "$largePoster${movie.posterPath ?? ''}",
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  errorBuilder: (context, error, stackTrace) => AppErrorWidget(
                    error: error.toString(),
                  ),
                ),
                titlePadding: const EdgeInsetsDirectional.only(start: 36.0, bottom: 16.0),
                title: Container(
                  decoration: BoxDecoration(
                    borderRadius: BaseBorderRadiusDirectional.start(),
                    color: Theme.of(context).primaryColor.withAlpha(150),
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsetsDirectional.only(start: 25.0, top: 2.0, bottom: 2.0),
                  child: Text(
                    movie.title ?? movie.name ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overScrollIndicatorNotification) {
              overScrollIndicatorNotification.disallowGlow();
              return true;
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TransparentDivider(height: 5),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                      ),
                      TransparentVerticalDivider(width: 2),
                      Text(
                        movie.voteAverage.toString(),
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      TransparentVerticalDivider(width: 20),
                      Text(
                        movie.releaseDate ?? '',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  TransparentDivider(
                    height: 16,
                  ),
                  Text(
                    movie.overview ?? '',
                    style: TextStyle(),
                  ),
                  TransparentDivider(height: 16.0),
                  Container(
                    child: ResultStateBuilder<TrailersProvider, Trailer>(
                      builder: (context, trailersResponse, child) {
                        if (trailersResponse.results.length > 0) {
                          return Container(
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  AppLocalizations.of(context).videos,
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: trailersResponse.results.length,
                                    itemBuilder: (BuildContext context, int index) => Container(
                                      margin: EdgeInsetsDirectional.only(
                                        top: 4.0,
                                        bottom: 4.0,
                                        start: (index == 0) ? 0.0 : 4.0,
                                        end: (index == (trailersResponse.results.length) - 1) ? 0.0 : 4.0,
                                      ),
                                      child: TrailerItem(trailersResponse.results[index]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                        return Container();
                      },
                    ),
                  ),
                  Container(
                    child: ResultStateBuilder<ReviewsProvider, Review>(
                      builder: (context, reviewsResponse, child) {
                        if (reviewsResponse.results.length > 0) {
                          return ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.only(top: 0),
                            itemCount: reviewsResponse.results.length,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) => Container(
                              margin: EdgeInsets.only(
                                top: (index == 0) ? 0.0 : 4.0,
                                bottom: (index == (reviewsResponse.results.length) - 1) ? 0.0 : 4.0,
                              ),
                              child: ReviewItem(reviewsResponse.results[index]),
                            ),
                          );
                        }
                        return Container();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
