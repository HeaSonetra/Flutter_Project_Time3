import 'package:demo/model/productModel.dart';
import 'package:demo/view/detailPage.dart';
import 'package:flutter/material.dart';

Widget BestSeller(BuildContext context,Productmodel productModel){
    return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(productmodels: productModel,)));
                        },
                        child: Container(
                          width: 200,
                          height: 320,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                productModel.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "\$${productModel.sizeOption[0]["price"]}",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                width: 160,
                                height: 160,
                                //color: Colors.amber,
                                child: Image(
                                  image: AssetImage(productModel.img),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  Text(
                                    "🔥 ${productModel.calories} calorise",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.grey[600],
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "${productModel.distance} min",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 60),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: Center(
                                      child: Icon(Icons.add,size: 16,color: Colors.white,)
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
    
  }