import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/src/views/main/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUPSuccessScreen extends StatelessWidget {
  static const String route = 'sign-up-success';
  const SignUPSuccessScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          /***** Image  *****/
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 173,
                  height: 142,
                  child: SvgPicture.asset(ACCOUNT_SUCCESS_IMAGE , width: 173,),
                ),
                const FittedBox(fit: BoxFit.scaleDown, child: Text('Your account has been set up!' , textAlign: TextAlign.center , style: TextStyle(fontSize: 24),)),
                const FittedBox(fit: BoxFit.scaleDown, child: Text('we have customized feed according to your preferences ', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(107,114 , 128,1,)),)),
              ],
            ),
          ),
          /***** -END- Image  *****/
          

          /***** Button  *****/
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CustomStanderButton(text: 'Get Started',
                    onPress: ()=> Navigator.pushNamedAndRemoveUntil(context, MainScreen.route , (route)=>false),
                  ),
                )
              ],
            )
          )
          /***** -END- Button  *****/
        ],
      ),
    );
  }
}