import 'package:flutter/material.dart';

import '../../app_constant/theme_color.dart';

class VerticalItems extends StatelessWidget {
  const VerticalItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 67,
      itemBuilder: (BuildContext context, int i) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListTile(
            leading: Container(
              width: MediaQuery.sizeOf(context).height / 11,
              height: MediaQuery.sizeOf(context).height / 11,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://avatars.githubusercontent.com/u/91738361?v=4",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              "UserName",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: ThemeColor.lightDark,
              ),
            ),
            subtitle: Text(
              "Their Last message.",
              style: TextStyle(
                color: ThemeColor.lightGray,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Text(
              "12:24 AM",
              style: TextStyle(
                color: ThemeColor.lightGray,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      },
    );
  }
}
