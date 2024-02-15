import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_header/custom_text_header.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up_location/components/sign_up_country_box.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up_success/sign_up_success_screen.dart';
import 'package:flutter/material.dart';

class SignUpLocationScreen  extends StatelessWidget {
  static const String route = 'sign-up-loation';
  const SignUpLocationScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /***** Header Text ******/
          const CustomTextHeader(
            height: 170,
            title: 'where are you perefered Location ?', 
            subtitle: 'Let us know, where is the work location you want at this time, so we can adjust it.' 
          ),
          /***** -END- Header Text ******/

          /***** countries ******/
          Expanded( 
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  children: [
                    SignUpCountryBox(acticve: true, countryName: 'United State ', flag:  Image.asset(US_FLAG_IMAGE)),
                    SignUpCountryBox(acticve: false, countryName: 'Malaysia', flag:  Image.asset(MALAYSIA_FLAG_ICON)),
                    SignUpCountryBox(acticve: false, countryName: 'Singapore', flag:  Image.asset(SINGAPORE_FLAG_ICON)),
                    SignUpCountryBox(acticve: false, countryName: 'Indonesia', flag:  Image.asset(INDONESIA_FLAG_ICON)),
                    SignUpCountryBox(acticve: false, countryName: 'Philippines', flag:  Image.asset(PHILIPPINES_FLAG_ICON)),
                    SignUpCountryBox(acticve: false, countryName: 'Polandia', flag:  Image.asset(POLANDIA_FLAG_ICON)),
                    SignUpCountryBox(acticve: false, countryName: 'India', flag:  Image.asset(INDIA_FLAG_ICON)),
                    SignUpCountryBox(acticve: false, countryName: 'vietnam', flag:  Image.asset(VIETNAM_FLAG_ICON)),
                    SignUpCountryBox(acticve: false, countryName: 'China', flag:  Image.asset(CHINA_FLAG_ICON)),
                    SignUpCountryBox(acticve: false, countryName: 'Canda', flag:  Image.asset(CANADA_FLAG_ICON)),
                    SignUpCountryBox(acticve: false, countryName: 'Saudi Arabia', flag:  Image.asset(KSA_FLAG_ICON)),
                    SignUpCountryBox(acticve: false, countryName: 'Argentina', flag:  Image.asset(ARGENTINA_FLAG_ICON)),
                    SignUpCountryBox(acticve: false, countryName: 'Brazil', flag:  Image.asset(BRAZIL_FLAG_ICON)),
                  ],
                ),
              ),
            )
          ),
          /***** -END- countries ******/
          
          /***** Next Button *****/
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: CustomStanderButton(
                    text: 'Next' ,
                    onPress: ()=> Navigator.pushNamed(context, SignUPSuccessScreen.route)
                  )
                )
              ],
            ),
          )
          /***** -END- Next Button *****/
        ],
      ),
    );
  }
}