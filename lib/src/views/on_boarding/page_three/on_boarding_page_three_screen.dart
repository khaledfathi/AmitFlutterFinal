import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/src/views/login/login_screen.dart';
import 'package:amit_flutter_final/src/views/on_boarding/components/on_boarding_page.dart';
import 'package:flutter/material.dart';

class OnBoardingPageThreeScreen extends StatelessWidget {
  static const String route = 'on-boarding-page-three';
  const OnBoardingPageThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      image: ON_BOARDING_Three_IMAGE , 
      pageButtonText: 'Get Started',
      selectedDot: 3,
      text: RichText(text: const TextSpan(
        style: TextStyle(color: Colors.black , fontSize: 32),
        children: [
          TextSpan(text: 'Get the best '),
          TextSpan(text: 'choice for the job ' , style: TextStyle(color: Colors.blue)),
          TextSpan(text: 'you\'ve always dreamed of'),
        ]
      )),
      paragraph: 'The better the skills you have, the greater the good job oppertunities for you',
      onPressPageButton: ()=> Navigator.pushReplacementNamed(context, LoginScreen.route), 
    );
  }
}
