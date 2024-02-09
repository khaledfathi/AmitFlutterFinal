import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/core/custom_widgets/or_label/custom_or_label.dart';
import 'package:amit_flutter_final/core/custom_widgets/social_media_buttons_box/social_medial_buttons_box.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_field/custom_text_form_filed.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_header/custom_text_header.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_line_with_navigation/custom_text_line_with_navigation.dart';
import 'package:amit_flutter_final/src/views/login/components/login_app_bar.dart';
import 'package:amit_flutter_final/src/views/login/components/login_option_line.dart';
import 'package:amit_flutter_final/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'login' ; 
  const LoginScreen({super.key});
  final _appBar = const LoginAppBar(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar,
        body: GestureDetector(
          onTap: ()=>FocusManager.instance.primaryFocus!.unfocus(),
          child: SingleChildScrollView(
            child: SizedBox(
              height: _heightWithOutAppBar(context),
              child: Column(
                children: [
                  /***** Header *****/
                  const CustomTextHeader(
                    title: 'Login',
                    subtitle: 'Please login to find your dream job',
                  ),
                  /***** -END- Header *****/
          
                  /****** FORM ******/
                  Container(
                    height: 250,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Form(
                        child: Column(
                      children: [
                        /***** User name input field *****/
                        CustomTextFormField(
                          prefixIcon: SvgPicture.asset(PERSON_ICON),
                          hintText: 'User Name',
                        ),
                        /***** -END- User name input field *****/
          
                        /***** Password text filed *****/
                        CustomTextFormField(
                          prefixIcon: SvgPicture.asset(LOCK_ICON),
                          hintText: 'Password',
                          obscureText: true,
                          suffixIcon: const Icon(Icons.visibility),
                          onTapVisibility: () => print('on visibilty clicked'),
                        ),
                        /***** -END- Password text filed *****/
          
                        /***** options line *****/
                        LoginOptionLine(
                          onChangeCheckBox: (val) {},
                          onTapForgetPassword: () {},
                          checkBoxValue: true,
                        ),
                        /***** -END- options line *****/
                      ],
                    )),
                  ),
                  /****** -END- FORM ******/
          
                  /***** Screen bottom *****/
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 30,
                          left: 0 ,
                          right: 0,
                          child: Column(
                              children: [
                                /***** Go to register ******/
                                CustomTextLineWithNavigator(
                                  text: 'Don\'t have account? ',
                                  buttonText: 'Register',
                                  onTap: () => print('Register clicked'),
                                ),
                                /***** -END- Go to register ******/
                            
                                /***** Login Button ******/
                                CustomStanderButton(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  color: const Color.fromRGBO(209, 213, 219, 1),
                                  textColor: const Color.fromRGBO(107, 114, 128, 1),
                                  text: 'Login',
                                  onPress: () => print('login clicked'),
                                ),
                                /***** -END- Login Button ******/
                            
                                /***** Or Label******/
                                const CustomOrLabel( 
                                  text: 'Or Login with Account',
                                ),
                                /***** -END- Or Label******/
                            
                                /***** Social media buttons section*****/
                                SocialMediaButtonsBox( 
                                  onTapGoogle: ()=>print('google button clickecd'),
                                  onTapFacebook: ()=>print('facebook button clickecd'),
                                )
                                /***** -END- Social media buttons section*****/
                              ],
                            )
                        ),
                        
                      ],
                    ),
                  ),
                  /***** -END- Screen bottom *****/
                ],
              ),
            ),
          ),
        ) 
    );
  }

  ///get screen height exclude appbar heigh and kToolbar hight
  double _heightWithOutAppBar(BuildContext context) {
    return MediaQuery.of(context).size.height -
        _appBar.preferredSize.height -
        kToolbarHeight;
  }
}