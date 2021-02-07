import 'package:state_notifier/state_notifier.dart';
import 'package:tester_app/ui/router/route_path.dart';

class RouterProvider extends StateNotifier<RoutePath> {
  RouterProvider() : super(const HomeRoutePath());

  set current(RoutePath routePath) => state = routePath;
  RoutePath get current => state;
}
