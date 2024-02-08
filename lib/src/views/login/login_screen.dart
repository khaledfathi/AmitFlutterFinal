import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'login' ; 
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset(APP_LOGO_IMAGE , height: 19, width: 81,),
          )
        ],
      ),
      body: const Center(child: Text('Login Screen'),),
    );
  }
}