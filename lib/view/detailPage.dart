import 'package:demo/model/productModel.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key, required this.productmodels});
  final Productmodel productmodels;
  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  var favorite = false;
  @override
  Widget build(BuildContext context) {
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
            ],
          ),
        ),
      ),
    );
  }
}
