import 'package:flutter/material.dart';

class HomeChats extends StatefulWidget {
  const HomeChats({super.key});

  @override
  State<HomeChats> createState() => _HomeChatsState();
}

class _HomeChatsState extends State<HomeChats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("HomeChat", style: TextStyle(fontSize: 24),),
      ),
    );
  }
}


