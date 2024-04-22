import 'package:get/get.dart';
import 'package:immoplus/screens/pages/detail/controllers/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}