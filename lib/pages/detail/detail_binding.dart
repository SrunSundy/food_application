import 'package:food_app/pages/detail/detail_controller.dart';
import 'package:get/instance_manager.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }

}