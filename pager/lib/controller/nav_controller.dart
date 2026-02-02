import 'package:get/get.dart';

class NavController extends GetxController {
  int _currentScreen = 1;

  int get currentScreen => _currentScreen;

  void setCurrentScreen({required int screenIndex}) {
    _currentScreen = screenIndex;
    update();
  }
}
