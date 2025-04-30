import 'package:demo/widget/bottomNavWidget.dart';
import 'package:flutter/material.dart';

class Personpage extends StatelessWidget {
  const Personpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person"),
      ),
       bottomNavigationBar:bottomNav(context, 4)
    );
  }
}