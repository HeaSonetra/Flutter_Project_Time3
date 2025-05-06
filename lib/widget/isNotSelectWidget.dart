import 'package:demo/model/productModel.dart';
import 'package:flutter/material.dart';

Widget isNotSelected(BuildContext context,Productmodel productModel,String size,double price){
    return Container(
                    width: 120,
                    height: 130,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Icon(Icons.radio_button_off),
                        SizedBox(height: 16,),
                        Text(size,style: TextStyle(color: Colors.grey[600]),),
                        SizedBox(height: 14,),
                        Text("${price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                      ],
                    ),
                  );
  }