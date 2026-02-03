import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pager/app_constant/theme_color.dart';
import 'package:pager/controller/nav_controller.dart';
import 'package:pager/ui/screen/home_chats.dart';

class CustomNavigator extends StatelessWidget {
  const CustomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            foregroundColor: ThemeColor.lightAccent,
            title: Text(
              "PAGER",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),

            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.account_circle_rounded,
                  size: 35,
                  color: ThemeColor.lightDark,
                ),
              ),
            ],
          ),
          body: HomeChats(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentScreen,
            onTap: (int index) {
              controller.setCurrentScreen(screenIndex: index);
            },
            selectedItemColor: ThemeColor.lightAccent,
            unselectedItemColor: ThemeColor.lightGray,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_rounded),
                label: "People",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wechat_sharp),
                label: "Chats",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: "Find",
              ),
            ],
          ),
        );
      },
    );
  }
}
