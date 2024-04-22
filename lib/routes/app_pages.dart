import 'package:get/get.dart';
import 'package:immoplus/domain/entities/house.dart';
import 'package:immoplus/screens/pages/auth/login/bindings/login_binding.dart';
import 'package:immoplus/screens/pages/auth/login/views/login_view.dart';
import 'package:immoplus/screens/pages/detail/bindings/detail_binding.dart';
import 'package:immoplus/screens/pages/detail/views/detail_view.dart';
import 'package:immoplus/screens/pages/home/bindings/home_binding.dart';
import 'package:immoplus/screens/pages/home/views/home_view.dart';
import 'package:immoplus/screens/pages/splash/bindings/splash_binding.dart';
import 'package:immoplus/screens/pages/splash/views/splash_view.dart';
part './app_routes.dart';

abstract class AppPages {
  AppPages();
  static const init = _Paths.loginPage;

  static final routes = [
    GetPage(
      name: _Paths.splashScreen, 
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.loginPage, 
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.homePage, 
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
     GetPage(
      name: _Paths.detailPage, 
      page: () => DetailView(house: House(image: '', title: '', description: ''),),
      binding: DetailBinding(),
    ),
  ];
}