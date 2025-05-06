import 'package:demo/view/confirmationPage.dart';
import 'package:demo/view/favoritePage.dart';
import 'package:demo/view/homePage.dart';
import 'package:demo/view/personPage.dart';
import 'package:demo/view/shoppingPage.dart';
import 'package:flutter/material.dart';

Widget bottomNav(BuildContext context, int currentIndex) {
  final isSelected = currentIndex;
  return BottomNavigationBar(
    currentIndex: currentIndex,
    backgroundColor: Colors.transparent,
    elevation: 0,
    selectedItemColor: Colors.green,
    unselectedItemColor: Colors.grey.shade400,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
    onTap: (index) {
      if (index == currentIndex) return;
      switch (index) {
        case 0:
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
          break;
        case 1:
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Favoritepage()),
            );
          }
          break;
        case 2:
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Shoppingpage()),
            );
          }
          break;
        case 3:
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Confirmationpage()),
            );
          }
          break;
        case 4:
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Personpage()),
            );
          }
          break;
      }
    },

    items: [
      BottomNavigationBarItem(
        icon: Container(
          //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isSelected == 0 ? Colors.lightGreen.shade300 :Colors.transparent,
          ),
          child: Icon(Icons.home,color: isSelected == 0 ? Colors.white: Colors.grey.shade400,),
        ),
        label: "",
        //backgroundColor: isSelected==2 ? Colors.amber : Colors.grey.shade400,
      ),
      BottomNavigationBarItem(
        icon: Container(
          //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isSelected == 1 ? Colors.lightGreen.shade300 :Colors.transparent,
          ),
          child: Icon(Icons.favorite,color: isSelected == 1 ? Colors.white: Colors.grey.shade400,),
        ),
        label: "",
        //backgroundColor: isSelected==2 ? Colors.amber : Colors.grey.shade400,
      ),
      BottomNavigationBarItem(
        icon: Container(
          //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isSelected == 2 ? Colors.lightGreen.shade300 :Colors.transparent,
          ),
          child: Icon(Icons.shopping_cart,color: isSelected == 2 ? Colors.white: Colors.grey.shade400,),
        ),
        label: "",
        //backgroundColor: isSelected==2 ? Colors.amber : Colors.grey.shade400,
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isSelected == 3 ? Colors.lightGreen.shade300 : Colors.transparent,
          ),
          child: Icon(Icons.confirmation_num_outlined,color: isSelected == 3 ? Colors.white: Colors.grey.shade400,),
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Container(
          //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isSelected == 4 ? Colors.lightGreen.shade300 :Colors.transparent,
          ),
          child: Icon(Icons.person,color: isSelected == 4 ? Colors.white: Colors.grey.shade400,),
        ),
        label: "",
        //backgroundColor: isSelected==2 ? Colors.amber : Colors.grey.shade400,
      ),
    ],
  );
}
