import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/di/providers/movies_provider.dart';
import 'package:tester_app/di/providers/path_providers/path_provider.dart';
import 'package:tester_app/models/response_type/response_type.dart';
import 'package:tester_app/ui/base_widgets/base_app_page.dart';
import 'package:tester_app/ui/base_widgets/base_constants/base_border.dart';
import 'package:tester_app/ui/base_widgets/base_state_widget.dart';
import 'package:tester_app/ui/home_page/movies_screen/movies_grid.dart';
import 'package:tester_app/utils/movies_db_extensions.dart';

class HomeScreen extends BaseAppPage {
  HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseAppPageState<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget get body => Column(
        children: [
          Expanded(
            child: IntrinsicHeight(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  StateNotifierBuilder<List<TypePath>>(
                    stateNotifier: context.watch<TypePathListProvider>(),
                    builder: (BuildContext context, typePathList, Widget child) => Container(
                      height: (typePathList.length * 110.0) + 56.0,
                      child: Row(
                        children: [
                          RotatedBox(
                            quarterTurns: context.watch<Locale>().quarterTurns,
                            child: SizeTransition(
                              sizeFactor: _animation,
                              child: Container(
                                width: (typePathList.length * 110.0) + 56.0,
                                height: kToolbarHeight,
                                child: ScaleTransition(
                                  scale: _animation,
                                  child: ClipRRect(
                                    borderRadius: BaseBorderRadiusDirectional.bottom().resolveSuper(context),
                                    child: Material(
                                      elevation: 0.0,
                                      color: Theme.of(context).primaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BaseBorderRadiusDirectional.bottom(),
                                      ),
                                      child: StateNotifierBuilder<TypePath>(
                                        stateNotifier: context.watch<TypePathProvider>(),
                                        builder: (BuildContext context, typePath, Widget child) => TabBar(
                                          labelPadding: EdgeInsets.zero,
                                          controller: TabController(
                                            vsync: this,
                                            length: typePathList.length,
                                            initialIndex: typePath.index,
                                          ),
                                          indicatorSize: TabBarIndicatorSize.label,
                                          indicatorPadding: const EdgeInsets.all(0.0),
                                          onTap: (typeIndex) {
                                            if (typePath.index != typeIndex) {
                                              context.read<MoviesProvider>().typePathByIndex = typeIndex;
                                              close();
                                            }
                                          },
                                          tabs: typePathList
                                              .asMap()
                                              .map(
                                                (index, typePath) => MapEntry(
                                                  index,
                                                  Container(
                                                    width: 90,
                                                    child: Tab(
                                                      text: typePath.title,
                                                    ),
                                                  ),
                                                ),
                                              )
                                              .values
                                              .toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onHorizontalDragEnd: _endDragging,
                            onHorizontalDragUpdate: _updateDragging,
                            onTap: toggle,
                            child: Container(
                              child: Icon(
                                Icons.arrow_right,
                                color: Theme.of(context).primaryIconTheme.color.withAlpha(0xB2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ResultStateBuilder<MoviesProvider, Movie>(
                      builder: (context, data, child) {
                        List<Movie> movies = data.results;
                        return Container(
                          child: MoviesGrid(
                            movies: movies,
                            crossAxisCount: 2,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  @override
  PreferredSizeWidget get appBar => BaseAppBar(
        flexibleSpace: Align(
          alignment: Alignment.bottomCenter,
          child: StateNotifierBuilder<MainPath>(
              stateNotifier: context.watch<MainPathProvider>(),
              builder: (context, mainPath, child) => TabBar(
                    controller: TabController(
                      vsync: this,
                      length: 2,
                      initialIndex: mainPath.index,
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: true,
                    indicatorPadding: const EdgeInsets.all(0.0),
                    dragStartBehavior: DragStartBehavior.start,
                    onTap: (index) {
                      if (mainPath.index != index) {
                        close();
                        Future.delayed(
                          Duration(milliseconds: 500),
                        ).then(
                          (value) => context.read<MoviesProvider>().mainPathByIndex = index,
                        );
                      }
                    },
                    tabs: (context.watch<MainPathProvider>().mainPathList)
                        .map(
                          (mainPath) => Container(
                            width: 50,
                            child: Tab(
                              text: mainPath.title,
                            ),
                          ),
                        )
                        .toList(),
                  )),
        ),
      );

  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    context.read<MoviesProvider>().loadMovies();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = CurvedAnimation(
      curve: Curves.fastOutSlowIn,
      parent: _animationController,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  open() => _animationController.forward();

  close() => _animationController.reverse();

  toggle() {
    _animationController.isDismissed ? open() : close();
  }

  _updateDragging(DragUpdateDetails updateDetails) {
    double delta = updateDetails.primaryDelta / kToolbarHeight;
    _animationController.value += delta;
  }

  _endDragging(DragEndDetails endDetails) {
    if (_animationController.value < 0.5) {
      close();
    } else {
      open();
    }
  }
}
