import 'package:demo/widget/bottomNavWidget.dart';
import 'package:flutter/material.dart';

class Favoritepage extends StatelessWidget {
  const Favoritepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
      ),
       bottomNavigationBar:bottomNav(context, 1)
    );
  }
}