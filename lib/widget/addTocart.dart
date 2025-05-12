import 'package:demo/model/productAddModel.dart';
import 'package:demo/model/productModel.dart';
import 'package:demo/view/cartpage.dart';
import 'package:flutter/material.dart';
List<Productmodel>  cartProductAdd=[];
Widget addTocart(BuildContext context,Productmodel product,double totalPriceAdd){
    int selectIndex=product.selectedInex==-1? 0 :product.selectedInex;
    double price=product.sizeOption[selectIndex]["price"];
    int qty=product.counter;
   // double priceAdd=
    return InkWell(
      onTap: () {
        cartProductAdd.add(product.copy());
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage(cartProducts: cartProductAdd)));
      },
      child: Container(
                width: 280,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 10,),
                      Text("Add to cart -",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),),
                      Text("\$${(price*qty)+totalPriceAdd}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),),
                    ],
                  ),
                ),
              ),
    );

    
  }