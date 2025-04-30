import 'package:demo/widget/bottomNavWidget.dart';
import 'package:flutter/material.dart';

class Confirmationpage extends StatelessWidget {
  const Confirmationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirmation"),
      ),
       bottomNavigationBar:bottomNav(context, 3)
    );
  }
}