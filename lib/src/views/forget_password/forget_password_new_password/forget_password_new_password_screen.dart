import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_field/custom_text_form_filed.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_header/custom_text_header.dart';
import 'package:amit_flutter_final/src/views/forget_password/forget_password_new_password/components/forge_password_new_password_app_bar.dart';
import 'package:amit_flutter_final/src/views/forget_password/forget_password_success/forget_password_succuss_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordNewPasswordScreen extends StatelessWidget {
  static const String route = 'forget-password-new-password';
  final _appBar = const ForgetPasswordNewPasswordApbbBar();
  const ForgetPasswordNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar,
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height -
                  _appBar.preferredSize.height -
                  kToolbarHeight,
              child: Column(
                children: [
                  /***** Header text *****/
                  const CustomTextHeader(
                      height: 100,
                      title: 'Create new password',
                      subtitle: 'Set your password so you can login and access jobsque '
                  /***** -END- Header text *****/
                  ),
                  
                  /***** Form *****/
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                    height: 230,
                    child: Form(
                      child: Column(
                        children: [
                          CustomTextFormField( 
                            prefixIcon: SvgPicture.asset(LOCK_ICON),
                            suffixIcon: const Icon(Icons.visibility_off_outlined),
                            onTapVisibility: () => print('visibility icon button is clicked'),
                            hintText: 'Password',
                          ),
                          CustomTextFormField(
                            suffixIcon: const Icon(Icons.visibility_off_outlined),
                            prefixIcon: SvgPicture.asset(LOCK_ICON),
                            hintText: 'Confirm Password',
                            onTapVisibility: () => print('visibility icon button is clicked'),
                          )
                        ],
                      ),
                    ),
                  ),
                  /***** -END- Form *****/
                  
                  /***** submit button *****/
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 50,
                          child: CustomStanderButton(
                            text: 'Reset Password',
                            onPress: ()=> Navigator.popAndPushNamed(context, ForgetPasswordSuccessScreen.route )
                          ),
                        ),
                      ],
                    ),
                  ),
                  /***** -END- submit button *****/
                ],
              ),
            ),
          ),
        ));
  }
}
