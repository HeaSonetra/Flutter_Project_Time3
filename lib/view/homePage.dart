import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/model/CategoryModel.dart';
import 'package:demo/model/productModel.dart';
import 'package:demo/widget/bestSellerWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Hello ✋",
                    style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Delisas Agency",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Icon(Icons.search, color: Colors.black, size: 30),
                  SizedBox(width: 30),
                  Icon(Icons.notifications_none, color: Colors.black, size: 30),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 120,
                //color: Colors.amber,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: [
                      for (var i = 0; i < listCategory.length; i++)
                        Container(
                          width: 90,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 70,
                                //color: Colors.amber,
                                child: Center(
                                  child: Text(
                                    listCategory[i].emoji,
                                    style: TextStyle(fontSize: 40),
                                  ),
                                ),
                              ),
                              Text(
                                listCategory[i].name,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  viewportFraction: 0.98,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                items: List.generate(
                  listCategory.length,
                  (index) => Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Text(
                          listCategory[index].emoji,
                          style: TextStyle(fontSize: 150),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Text(
                    "Best Seller",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "see all",
                    style: TextStyle(fontSize: 18, color: Colors.green),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < listproduct.length; i++)
                      BestSeller(context,listproduct[i])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  
}
