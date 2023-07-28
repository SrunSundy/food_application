import 'package:flutter/material.dart';
import 'package:food_app/color.dart';
import 'package:food_app/constant.dart';

class ProductItem extends StatelessWidget {

  final String title;
  final String description;
  final String calory;
  final String price;
  final String image;
  final String tag;
  const ProductItem({ Key? key,
    this.title = "",
    this.description = "",
    this.calory = "",
    this.price = "",
    this.image = "",
    this.tag = ""
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: gap),
      padding: EdgeInsets.only(top: 15, left: gap, right: gap, bottom: 15),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(gap),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            spreadRadius: 6,
            offset: Offset(0,3),
            color: black.withOpacity(0.03)
          )
        ]
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 1.2
                ),),
                SizedBox(height: 10,),
                Text(description, style: TextStyle(
                  color: black.withOpacity(0.35),
                  fontSize: 14,
                  height: 1.2
                ),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset("assets/images/fire.png"),
                    ),
                    SizedBox(width: 5,),
                    Text(calory, style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: secodPrimary
                    ),)
                  ],
                ),
                SizedBox(height: 20,),
                Text("\$" + price, style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),)
              ],
            )),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    spreadRadius: 6,
                    offset: Offset(0,3),
                    color: black.withOpacity(0.03)
                  )
                ]
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  child: Hero(
                    tag: tag,
                    child: Image.asset("assets/images/" +image)),
                ),
              ),
            ))
        ],
      ),
    );
  }
}