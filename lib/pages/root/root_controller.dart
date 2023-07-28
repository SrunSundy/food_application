import 'package:get/get.dart';

class RootController extends GetxController {
  
  var tabIndex = 0.obs;
  List tabs = [];

  onRender() {
    tabs = [
      "assets/icons/home.svg",
      "assets/icons/account.svg"
    ];
  }

  @override
  void onInit() {
    onRender();
    super.onInit();
  }
}