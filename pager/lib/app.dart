import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pager/ui/widget/custom_navigator.dart';
import 'controller_bindings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Pager",
      home: CustomNavigator(),
      initialBinding: ControllerBindings(),
    );
  }
}
