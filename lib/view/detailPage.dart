import 'package:demo/model/productAddModel.dart';
import 'package:demo/model/productModel.dart';
import 'package:demo/widget/isNotSelectWidget.dart';
import 'package:demo/widget/isSelectedWidget.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key, required this.productmodels});
  final Productmodel productmodels;
  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  var favorite = false;
  
  List<int> selectedIngredients=[];
  
  @override
  Widget build(BuildContext context) {
    final productID=widget.productmodels.id;
    final productIngredeint=listProductAdd.where((ingredeint) => productID==ingredeint.productID,).toList();

    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, size: 30),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        favorite = !favorite;
                      });
                    },
                    child:
                        (favorite == false)
                            ? Icon(Icons.favorite_border, size: 30)
                            : Icon(Icons.favorite, size: 30, color: Colors.red),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.share, size: 30),
                ],
              ),
              Container(
                width: double.infinity,
                height: 300,
                child: Image(image: AssetImage(widget.productmodels.img)),
              ),
              Row(
                children: [
                  Text(
                    widget.productmodels.name,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    widget.productmodels.decription,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(width: 60),
                  Icon(Icons.star, color: Colors.green),
                  SizedBox(width: 10),
                  Text(
                    "${widget.productmodels.rate}",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("(2.3k)", style: TextStyle(color: Colors.grey[600])),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 14,
                    color: Colors.grey[600],
                  ),
                ],
              ),
              SizedBox(height: 20),

              GridView.builder(
                shrinkWrap: true,
               // scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1 / 1.1,
                ),
                itemCount: widget.productmodels.sizeOption.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.productmodels.selectedInex = index;
                      });
                    },
                    child:
                        (widget.productmodels.selectedInex == index)
                            ? isSelect(
                              context,
                              widget.productmodels,
                              widget.productmodels.sizeOption[index]["size"],
                              widget.productmodels.sizeOption[index]["price"],
                            )
                            : isNotSelected(
                              context,
                              widget.productmodels,
                              widget.productmodels.sizeOption[index]["size"],
                              widget.productmodels.sizeOption[index]["price"],
                            ),
                  );
                },
              ),
              Row(
                children: [
                  Text(
                    "Add Incredients",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Column(
              //   children: 
              //     productIngredeint.map((ingredaint){
              //       return ListTile(

              //       );
              //     })
              // )
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: productIngredeint.map((ingredeint){
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: ListTile(
                           // tileColor: Colors.white,
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(ingredeint.img,),
                              radius: 50,
                            ),
                            title: Text(ingredeint.name),
                            subtitle: Text("${ingredeint.weight} - \$${ingredeint.price.toStringAsFixed(2)}"),
                            trailing: Checkbox(
                            value: selectedIngredients.contains(ingredeint.id),
                            onChanged: (value) {
                              setState(() {
                                if (value == true) {
                                  selectedIngredients.add(ingredeint.id);
                                  
                                } else {
                                  selectedIngredients.remove(ingredeint.id);
                                }
                              });
                            },
                          ),
                      ),
                    );
                }).toList()
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          children: [
            Container(
              width: 120,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 2,color: Colors.green)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        (widget.productmodels.counter>1)? widget.productmodels.counter-- : widget.productmodels.counter=widget.productmodels.counter;
                      });
                    },
                    child: Icon(Icons.delete_outlined,color:  Colors.grey)),
                  Text("${widget.productmodels.counter}",style: TextStyle(fontWeight: FontWeight.w600),),
                  InkWell(
                    onTap: (){
                      setState(() {
                        (widget.productmodels.counter<20)? widget.productmodels.counter++ : widget.productmodels.counter=widget.productmodels.counter;
                      });
                    },
                    child: Icon(Icons.add,color: Colors.grey,)),
                  SizedBox(width: 10,),

                ],
              ),
            ),
            SizedBox(width: 10,),
            addTocart(context, widget.productmodels)
          ],
        ),
      )
    );
  }
  Widget addTocart(BuildContext context,Productmodel product){
    int selectIndex=product.selectedInex==-1? 0 :product.selectedInex;
    double price=product.sizeOption[selectIndex]["price"];
    int qty=product.counter;
    return Container(
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
                    Text("\$${price*qty}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),),
                  ],
                ),
              ),
            );

    
  }
}
