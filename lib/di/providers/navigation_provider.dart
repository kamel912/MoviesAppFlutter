import 'package:state_notifier/state_notifier.dart';

class NavigationProvider extends StateNotifier<int> {
  NavigationProvider() : super(2);

  int get currentPage => state;

  set currentPage(int value) {
    if (state == value) {
      return;
    }
    state = value;
  }
}
