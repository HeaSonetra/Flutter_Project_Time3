import 'package:demo/widget/bottomNavWidget.dart';
import 'package:flutter/material.dart';

class Shoppingpage extends StatelessWidget {
  const Shoppingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping"),
      ),
       bottomNavigationBar:bottomNav(context, 2)
    );
  }
}