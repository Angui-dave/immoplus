part of './app_pages.dart';

abstract class _Paths {
  _Paths._();
  static const splashScreen = "/splash";
  static const onboardingPage = "/onboarding";
  static const loginPage = "/login";
  static const registerPage = "/register";
  static const homePage= "/home";
  static const detailPage = "/detail";
  static const profilPage = "/splash";
}

abstract class Routes {
  Routes._();
  static const splashScreen = _Paths.splashScreen;
  static const onboqrdingPage = _Paths.onboardingPage;
  static const loginPage = _Paths.loginPage;
  static const registerPage = _Paths.registerPage;
  static const homePage = _Paths.homePage;
  static const detailPage = _Paths.detailPage;
  static const profilPage = _Paths.profilPage;
}