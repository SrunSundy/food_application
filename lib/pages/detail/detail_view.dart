import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/color.dart';
import 'package:food_app/components/backward_button.dart';
import 'package:food_app/components/custom_quantity.dart';
import 'package:food_app/constant.dart';
import 'package:food_app/pages/detail/detail_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody() ,
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      title: Text(controller.data["title"], style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600
      ),),
      elevation: 0,
      leading: BackwardButton(),
      actions: [
        Center(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
              },
              borderRadius: BorderRadius.circular(100),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100)
                ),
                width: 20,
                height: 20,
                child: SvgPicture.asset("assets/icons/bag-bold.svg", color: primary,),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.43,
                child: Image.asset("assets/images/product-background.jpg"),
              ),

              Container(
                padding: EdgeInsets.only(left: 50, right: 50, top: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Hero(
                    tag: controller.data["id"],
                    child: Image.asset( "assets/images/" + controller.data["image"])),
                ),
              )
            ],
          ),

          Container(
            padding: EdgeInsets.only(left: gap, right: gap),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                _getProductInformation(),
                SizedBox(height: 30,),
                _getDetail()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _getProductInformation() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children : [
                _getIcon(icon: "fire.png", title: controller.data["calories"]),
                SizedBox(width: 15,),
                _getIcon(icon: "star.png", title:"5.0"),
              ]
            ),
            Text("\$"+ controller.data["price"], style: TextStyle(
              color: primary,
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),)
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            _getIcon(icon: "clock.png", title: "20-30 mins"),
            CustomQuantity()
          ],
        )
      ],
    );
  }

  Widget _getDetail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Information", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 10,),
        Text("Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven", 
          style: TextStyle(color: black.withOpacity(0.5), height: 1.5),
          
          )
      ],
    );
  }

  _getIcon({
    String icon = "",
    String title = ""
  }) {
    return Row(
      children: [
        Container(
          width: 25,
          height: 25,
          child: Image.asset("assets/images/"+ icon),
        ),
        SizedBox(width: 10,),
        Text(title, style: TextStyle(color: black.withOpacity(0.5)),)
      ],
    ); 
  }
}