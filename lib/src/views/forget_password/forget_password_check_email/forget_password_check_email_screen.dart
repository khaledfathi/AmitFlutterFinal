import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/core/custom_widgets/message_box/custom_message_box.dart';
import 'package:amit_flutter_final/src/views/forget_password/forget_password_new_password/forget_password_new_password_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordCheckEmailScreen extends StatelessWidget {
  static const String route = 'forget-password-check-email';
  const ForgetPasswordCheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:Column(
          children: [
            /***** header and image ******/
            Expanded(
              flex: 3,
              child: CustomMessageBox(
                image: FORGET_PASSWORD_EMAIL_IMAGE,  
                title: 'Check your Email ',
                subTitle: 'We have sent a reset password to your email address', 
              ) ,
            ),
            /***** -END- header and image ******/

            /***** Open email app button ******/
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Positioned( 
                    left: 0,
                    right: 0,
                    bottom: 50,
                    child: CustomStanderButton(
                      text: 'Open email app ',
                      onPress: ()=> Navigator.pushNamed(context, ForgetPasswordNewPasswordScreen.route),
                    ),
                  ),
                ],
              ) 
            )
            /***** -END- Open email app button ******/ 
          ],
        ), 
      
    );
  }
}
