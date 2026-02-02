import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pager/controller/nav_controller.dart';
import 'package:pager/ui/screen/home_chats.dart';

class CustomNavigator extends StatelessWidget {
  const CustomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavController>(
      builder: (controller) {
        return Scaffold(
          body: HomeChats(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentScreen,
            onTap: (int index){
              controller.setCurrentScreen(screenIndex: index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_rounded),
                label: "People",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.wechat_sharp), label: "Chats"),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: "Find",
              ),
            ],
          ),
        );
      }
    );
  }
}
