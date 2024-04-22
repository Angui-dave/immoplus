import 'package:get/get.dart';
import 'package:immoplus/domain/entities/house.dart';
import 'package:immoplus/screens/pages/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(house: House(image: '', title: '', description: '')));
  }
}