import 'package:flutter/material.dart';
import 'package:food_app/color.dart';
import 'package:food_app/constant.dart';

class CategoryItem extends StatelessWidget {

  final bool isActive;
  final String image;
  final String title;
  final Function()? onTap;
  const CategoryItem({ Key? key, this.isActive = false, this.image = "", this.title = "", this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    if (isActive) {
      return Padding(
        padding: EdgeInsets.only(left: gap),
        child: InkWell(
          onTap: onTap,
          child: Container(
            width: 140,
            decoration: BoxDecoration(
              color: primary,
              border: Border.all(color: primary.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(50)
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Image.asset("assets/images/" + image),
                ),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(title, style: TextStyle(
                      color: white,
                      fontSize: 13, fontWeight: FontWeight.w600
                    ), textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return Padding(
      padding: EdgeInsets.only(left: gap),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 140,
          decoration: BoxDecoration(
            border: Border.all(color: primary.withOpacity(0.8), width: 2),
            borderRadius: BorderRadius.circular(50)
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Image.asset("assets/images/" + image),
              ),

              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(title, style: TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w600
                  ), textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}