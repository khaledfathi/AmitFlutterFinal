import 'package:amit_flutter_final/src/views/login/login_screen.dart';
import 'package:amit_flutter_final/src/views/on_boarding/page_one/on_boarding_page_one_screen.dart';
import 'package:amit_flutter_final/src/views/on_boarding/page_three/on_boarding_page_three_screen.dart';
import 'package:amit_flutter_final/src/views/on_boarding/page_two/on_boarding_page_two_screen.dart';
import 'package:amit_flutter_final/src/views/page_not_found/page_not_found_screen.dart';
import 'package:amit_flutter_final/src/views/on_boarding/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteHandler {
  static Route<dynamic> generateRoutes (RouteSettings setting){
    switch (setting.name) {
      case SplashScreen.route :  return MaterialPageRoute(builder: (context)=>const SplashScreen() , settings: setting);
      /***** Onboarding *****/
      case OnBoardingPageOneScreen.route :  return MaterialPageRoute(builder: (context)=>const OnBoardingPageOneScreen() , settings: setting);
      case OnBoardingPageTwoScreen.route :  return MaterialPageRoute(builder: (context)=>const OnBoardingPageTwoScreen() , settings: setting);
      case OnBoardingPageThreeScreen.route :  return MaterialPageRoute(builder: (context)=>const OnBoardingPageThreeScreen() , settings: setting);
      /***** -END- Onboarding *****/
      case LoginScreen.route :  return MaterialPageRoute(builder: (context)=>const LoginScreen() , settings: setting);
      default : return MaterialPageRoute(builder: (_)=>const PageNotFoundScreen() , settings: setting); 
    }
  }
}