import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/color.dart';

class TabBarItem extends StatelessWidget {

  final bool isActive;
  final String icon;
  const TabBarItem({ Key? key, this.isActive = false, this.icon = "" }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            
            width: 25,
            height: 25,
            child: SvgPicture.asset(icon, color: white.withOpacity(0.4))
          ),

          SizedBox(height: 10,),

          isActive ?
          Container(
            width: 7, height: 7,
            decoration: BoxDecoration(
              color: secodPrimary,
              borderRadius: BorderRadius.circular(100)
            ),
          ) : SizedBox()
        ],
      ),
    );
  }
}