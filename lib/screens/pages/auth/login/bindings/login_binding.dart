import 'package:get/get.dart';
import 'package:immoplus/screens/pages/auth/login/controllers/login_controler.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}