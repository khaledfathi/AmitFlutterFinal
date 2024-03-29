import 'package:amit_flutter_final/src/views/apply_job/apply_job_screen.dart';
import 'package:amit_flutter_final/src/views/forget_password/forget_password/forget_password_screen.dart';
import 'package:amit_flutter_final/src/views/forget_password/forget_password_check_email/forget_password_check_email_screen.dart';
import 'package:amit_flutter_final/src/views/forget_password/forget_password_new_password/forget_password_new_password_screen.dart';
import 'package:amit_flutter_final/src/views/forget_password/forget_password_success/forget_password_succuss_screen.dart';
import 'package:amit_flutter_final/src/views/login/login_screen.dart';
import 'package:amit_flutter_final/src/views/main/applied/applied_screen%20copy.dart';
import 'package:amit_flutter_final/src/views/main/home/home_screen.dart';
import 'package:amit_flutter_final/src/views/main/home/home_search/home_search_screen.dart';
import 'package:amit_flutter_final/src/views/main/main_screen.dart';
import 'package:amit_flutter_final/src/views/main/messages/messages_screen.dart';
import 'package:amit_flutter_final/src/views/main/profile/profile_screen.dart';
import 'package:amit_flutter_final/src/views/main/saved/saved_screen.dart';
import 'package:amit_flutter_final/src/views/on_boarding/page_one/on_boarding_page_one_screen.dart';
import 'package:amit_flutter_final/src/views/on_boarding/page_three/on_boarding_page_three_screen.dart';
import 'package:amit_flutter_final/src/views/on_boarding/page_two/on_boarding_page_two_screen.dart';
import 'package:amit_flutter_final/src/views/page_not_found/page_not_found_screen.dart';
import 'package:amit_flutter_final/src/views/on_boarding/splash/splash_screen.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up/sign_up_screen.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up_location/sign_up_location_screen.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up_success/sign_up_success_screen.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up_work_type/sign_up_work_type_screen.dart';
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
      
      /***** Login Screen *****/
      case LoginScreen.route :  return MaterialPageRoute(builder: (context)=>const LoginScreen() , settings: setting);
      /***** -END- Login Screen *****/
      
      /***** Forget Passowrd*****/ 
      case ForgetPasswordScreen.route :  return MaterialPageRoute(builder: (context)=>const ForgetPasswordScreen() , settings: setting);
      case ForgetPasswordCheckEmailScreen.route :  return MaterialPageRoute(builder: (context)=>const ForgetPasswordCheckEmailScreen() , settings: setting);
      case ForgetPasswordNewPasswordScreen.route :  return MaterialPageRoute(builder: (context)=>const ForgetPasswordNewPasswordScreen() , settings: setting);
      case ForgetPasswordSuccessScreen.route :  return MaterialPageRoute(builder: (context)=>const ForgetPasswordSuccessScreen() , settings: setting);
      /***** -END- Forget Passowrd*****/ 
      
      
      /***** SignUp *****/ 
      case SignUpScreen.route :  return MaterialPageRoute(builder: (context)=>const SignUpScreen() , settings: setting);
      case SignUpWorkTypeScreen.route :  return MaterialPageRoute(builder: (context)=>const SignUpWorkTypeScreen() , settings: setting);
      case SignUpLocationScreen.route :  return MaterialPageRoute(builder: (context)=>const SignUpLocationScreen() , settings: setting);
      case SignUPSuccessScreen.route :  return MaterialPageRoute(builder: (context)=>const SignUPSuccessScreen() , settings: setting);
      /***** -END- SignUp *****/ 
      
      /***** Main Screen *****/ 
      case MainScreen.route :  return MaterialPageRoute(builder: (context)=>const MainScreen() , settings: setting);
      /***** -END- Main Screen *****/ 

      /***** Main Sub Screen *****/ 
      case HomeScreen.route :  return MaterialPageRoute(builder: (context)=>const HomeScreen() , settings: setting);
      //home search 
      case HomeSearchScreen.route :  return MaterialPageRoute(builder: (context)=>const HomeSearchScreen() , settings: setting);

      case MessagesScreen.route :  return MaterialPageRoute(builder: (context)=>const MessagesScreen() , settings: setting);
      case AppliedScreen.route :  return MaterialPageRoute(builder: (context)=>const AppliedScreen() , settings: setting);
      case SavedScreen.route :  return MaterialPageRoute(builder: (context)=>const SavedScreen() , settings: setting);
      case ProfileScreen.route :  return MaterialPageRoute(builder: (context)=>const ProfileScreen() , settings: setting);
      /***** -END- Main Sub Screen *****/ 

      /***** Apply job screen *****/ 
      case ApplyJobScreen.route :  return MaterialPageRoute(builder: (context)=>const ApplyJobScreen() , settings: setting);
      /***** -END- Apply job screen *****/ 

      default : return MaterialPageRoute(builder: (_)=>const PageNotFoundScreen() , settings: setting); 
    }
  }
}