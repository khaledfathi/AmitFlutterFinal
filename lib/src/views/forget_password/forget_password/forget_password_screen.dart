import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_field/custom_text_form_filed.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_header/custom_text_header.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_line_with_navigation/custom_text_line_with_navigation.dart';
import 'package:amit_flutter_final/src/views/forget_password/forget_password/components/forge_password_app_bar.dart';
import 'package:amit_flutter_final/src/views/forget_password/forget_password_check_email/forget_password_check_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const String route = 'forget-password';
  final _appBar = const ForgetPasswordAppBar();
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: _appBar , 
      body: GestureDetector(
        onTap: ()=>FocusManager.instance.primaryFocus!.unfocus(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - _appBar.preferredSize.height  - kToolbarHeight,
            child: Column(
              children: [
                /***** Header Text ******/
                const CustomTextHeader(
                  height: 135,
                  title: 'Reset Passwrod',
                  subtitle: 'Enter the email address you used when you joined and w\'ll send you instructions to reset your password'),
                /***** -END- Header Text ******/
            
                /***** Email input  *****/
                CustomTextFormField(
                  margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                  hintText: 'Enter your Email',
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon:  SvgPicture.asset(EMAIL_ICON),
                ),
                /***** -END- Email input  *****/
                
                /***** Login line and submit button *****/
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 30,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            /***** Text line navigate to login *****/
                            CustomTextLineWithNavigator(
                              text: 'you remember your password ', 
                              buttonText: 'Login',
                              onTap: ()=> Navigator.pop(context),
                            ),
                            /***** -END- Text line navigate to login *****/

                            /***** Request password button *****/
                           CustomStanderButton(
                              text: 'Rquest password reset', 
                              margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 25),   
                              onPress: ()=> Navigator.pushNamed(context, ForgetPasswordCheckEmailScreen.route)
                            ),
                            /***** -END- Request password button *****/
                          ],
                        ),
                      ),
                    ],
                  ),
                )
                /***** -END- Login line and submit button *****/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
