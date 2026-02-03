import 'package:flutter/material.dart';
import '../widget/horizontal_items.dart';
import '../widget/vertical_items.dart';

class HomeChats extends StatefulWidget {
  const HomeChats({super.key});

  @override
  State<HomeChats> createState() => _HomeChatsState();
}

class _HomeChatsState extends State<HomeChats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HorizontalItems(),
          Expanded(child: VerticalItems()),
        ],
      ),
    );
  }
}
