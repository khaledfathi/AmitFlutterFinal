import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/core/custom_widgets/or_label/custom_or_label.dart';
import 'package:amit_flutter_final/core/custom_widgets/social_media_buttons_box/custom_social_medial_buttons_box.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_field/custom_text_form_filed.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_header/custom_text_header.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_line_with_navigation/custom_text_line_with_navigation.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up/components/sign_up_app_bar.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up_work_type/sign_up_work_type_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  static const String route = 'sign-up';
  final _appBar = const SignUPAppBar();
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: GestureDetector(
        onTap: ()=>FocusManager.instance.primaryFocus!.unfocus(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height -
                _appBar.preferredSize.height -
                kToolbarHeight,
            child: Column(
              children: [
                /***** Header ******/
                const CustomTextHeader(
                    title: 'Create Account',
                    subtitle: 'Please create an account to find your dream job'),
                /***** -END- Header ******/
                
          
                /***** Form ******/
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /***** User Name Field  ******/
                        CustomTextFormField(
                          hintText: 'Username',
                          prefixIcon: SvgPicture.asset(PERSON_ICON),
                        ),
                        /***** -END- User Name Field  ******/
          
                        /***** Email Field ******/
                        CustomTextFormField(
                          hintText: 'Email',
                          prefixIcon: SvgPicture.asset(EMAIL_ICON),
                        ),
                        /***** -END- Email Field ******/                       
          
                        /***** Password Field ******/
                        CustomTextFormField(
                          hintText: 'Password',
                          prefixIcon: SvgPicture.asset(LOCK_ICON),
                          suffixIcon: const Icon(Icons.visibility_outlined),
                        ),
                        /***** -END- Password Field ******/
                        
                        /***** Password security rules text *****/
                        Container(
                          alignment: Alignment.centerLeft,
                          child:  const Text('password must be at least 8 character', 
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(156, 163, 175, 1),
                            ),
                          ),
                        ),
                        /***** -END- Password security rules text *****/
                      ],
                    ),
                  ),
                ),
                /***** -END- Form ******/
          
                Expanded(
                  child: Stack(children: [
                    Positioned(
                        bottom: 50 , 
                        left: 0,
                        right: 0 ,
                        child: Column(
                          children: [
                            /***** Go to register ******/
                            CustomTextLineWithNavigator(
                              text: 'Already have account ',
                              buttonText: 'Login',
                              onTap: () => Navigator.pop(context),
                            ),
                            /***** -END- Go to register ******/
          
                            /***** Login Button ******/
                            CustomStanderButton(
                              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              color: const Color.fromRGBO(209, 213, 219, 1),
                              textColor: const Color.fromRGBO(107, 114, 128, 1),
                              text: 'Create account',
                              onPress: () => Navigator.pushNamed(context, SignUpWorkTypeScreen.route),
                            ),
                            /***** -END- Login Button ******/
          
                            /***** Or Label******/
                            const CustomOrLabel(
                              text: 'Or Sign up with Account',
                            ),
                            /***** -END- Or Label******/
          
          
                            /***** Social media buttons section*****/
                            CustomSocialMediaButtonsBox(
                              onTapFacebook: () => print('Facebook button is clicked'),
                              onTapGoogle: () => print('google button is clicked'),
                            )
                            /***** -END- Social media buttons section*****/
                          ],
                        )
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
