import 'package:get/get.dart';

class DetailController extends GetxController {

  //get data from passing params
   var params = Get.arguments;
   var data;

  @override
  void onInit() {
    if (params != null) {
      data = params["data"];
    }
    super.onInit();
  }
}