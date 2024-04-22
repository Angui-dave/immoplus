import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:immoplus/routes/app_pages.dart';
import 'package:immoplus/screens/pages/splash/bindings/splash_binding.dart';

void main() {
  runApp(const AppImmoPlus());
}

class AppImmoPlus extends StatelessWidget {
  const AppImmoPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.init,
      getPages: AppPages.routes,
      initialBinding: SplashBinding(),
      theme: ThemeData(
        fontFamily: 'Raleway',
        useMaterial3: false,
      ),
    );
  }
}
