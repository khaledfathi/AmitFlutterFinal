import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/core/custom_widgets/message_box/custom_message_box.dart';
import 'package:amit_flutter_final/src/views/login/login_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordSuccessScreen extends StatelessWidget {
  static const String route = 'forget-password-success';
  const ForgetPasswordSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: CustomMessageBox(
                    image: FORGET_PASSWORD_SUCCESS_IMAGE,
                    title: 'Password changed successfully',
                    subTitle: 'your password has been changed successfully, we will let you know if there more problems with your account'
                  ),
            ),
            Expanded( 
              flex: 1,
              child: Stack(
                children: [
                  Positioned( 
                    bottom: 50,
                    left: 0,
                    right: 0,
                    child: CustomStanderButton(
                      text: 'Back to Login',
                      onPress: ()=> Navigator.pushNamedAndRemoveUntil(context, LoginScreen.route, (route) => false)
                    )
                  ),
                ],
              )
            )
          ],
        ));
  }
}
