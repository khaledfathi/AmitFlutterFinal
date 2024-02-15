import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/src/views/on_boarding/components/on_boarding_page.dart';
import 'package:amit_flutter_final/src/views/on_boarding/page_three/on_boarding_page_three_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingPageTwoScreen extends StatelessWidget {
  static const String route = 'on-boarding-page-two';
  const OnBoardingPageTwoScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      image: ON_BOARDING_TWO_IMAGE , 
      pageButtonText: 'Next',
      selectedDot: 2,
      text: RichText(text: const TextSpan(
        style: TextStyle(color: Colors.black , fontSize: 32),
        children: [
          TextSpan(text: 'Hundereds of Jobs are wating for you to '),
          TextSpan(text: 'join together ' , style: TextStyle(color: Colors.blue)),
        ]
      )),
      paragraph: 'Immediately join us and start applaying for the job you are intrested in.',
      onPressPageButton: ()=> Navigator.popAndPushNamed(context, OnBoardingPageThreeScreen.route),
    );
  }
}
