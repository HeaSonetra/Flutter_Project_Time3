import 'package:demo/model/productModel.dart';
import 'package:flutter/material.dart';

Widget isSelect(BuildContext context,Productmodel productModel,String size,double price){
    return Container(
                    width: 120,
                    height: 130,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 2,color: Colors.green),
                      boxShadow: [
                                BoxShadow(
                                  color: Colors.green.shade100,
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                )
                              ]
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 13,),
                        Icon(Icons.radio_button_checked,color: Colors.green,shadows: [ BoxShadow(
                                  color: Colors.green.shade100,
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                )],),
                        SizedBox(height: 13,),
                        Text(size,style: TextStyle(color: Colors.grey[600]),),
                        SizedBox(height: 13,),
                        Text("${price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                        

                      ],
                    ),
                  );
  }