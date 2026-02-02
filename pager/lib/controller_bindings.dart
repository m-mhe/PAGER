import 'package:get/get.dart';
import 'package:pager/controller/nav_controller.dart';

class ControllerBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(NavController());
  }
}