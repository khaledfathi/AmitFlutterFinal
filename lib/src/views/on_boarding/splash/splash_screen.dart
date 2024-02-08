import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/src/views/on_boarding/page_one/on_boarding_page_one_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  static const String route = 'splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2) , ()=>Navigator.pushReplacementNamed(context, OnBoardingPageOneScreen.route)); 
    Size screenSize = MediaQuery.of(context).size;    
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: Stack(
      children: [
        SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: SvgPicture.asset(
            BLUR_IMAGE,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SvgPicture.asset(APP_LOGO_IMAGE),
        )
      ],
    ));
  }
}
