import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/src/views/on_boarding/components/on_boarding_page.dart';
import 'package:amit_flutter_final/src/views/on_boarding/page_two/on_boarding_page_two_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingPageOneScreen extends StatelessWidget {
  static const String route = 'on-boarding-page-one';
  const OnBoardingPageOneScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      image: ON_BOARDING_ONE_IMAGE , 
      text: RichText(text: const TextSpan(
        style: TextStyle(color: Colors.black , fontSize: 32),
        children: [
          TextSpan(text: 'Find a job , and '),
          TextSpan(text: 'start building ' , style: TextStyle(color: Colors.blue)),
          TextSpan(text: 'your career from now on '),
        ]
      )),
      paragraph: 'Explore over 25,924 available job roles and upgrade your operator now . ',
      onPressPageButton: ()=> Navigator.pushReplacementNamed(context , OnBoardingPageTwoScreen.route),
    );
  }
}
