import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_header/custom_text_header.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up_location/components/sign_up_country_box.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up_success/sign_up_success_screen.dart';
import 'package:flutter/material.dart';

class SignUpLocationScreen  extends StatefulWidget {
  static const String route = 'sign-up-loation';

  const SignUpLocationScreen ({super.key});

  @override
  State<SignUpLocationScreen> createState() => _SignUpLocationScreenState();
}

class _SignUpLocationScreenState extends State<SignUpLocationScreen> {
  // ignore: prefer_final_fields
  List<Map> _countryData= [
    {'name': 'United State', 'image': US_FLAG_IMAGE },
    {'name': 'Malaysia', 'image': MALAYSIA_FLAG_ICON },
    {'name': 'Singapore', 'image': SINGAPORE_FLAG_ICON },
    {'name': 'Indonesia', 'image': INDONESIA_FLAG_ICON },
    {'name': 'Philippines', 'image': PHILIPPINES_FLAG_ICON },
    {'name': 'Polandia', 'image': POLANDIA_FLAG_ICON },
    {'name': 'India', 'image': INDIA_FLAG_ICON },
    {'name': 'Vietnam', 'image': VIETNAM_FLAG_ICON },
    {'name': 'China', 'image': CHINA_FLAG_ICON },
    {'name': 'Canda', 'image': CANADA_FLAG_ICON },
    {'name': 'Saudi Arabia', 'image': KSA_FLAG_ICON },
    {'name': 'Argentina', 'image': ARGENTINA_FLAG_ICON },
    {'name': 'Brazil', 'image': BRAZIL_FLAG_ICON },
  ];
  int _countrySelected = 0; 

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
                  children: _countryList(), 
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

  /// create list of countries widgets 
  List<Widget> _countryList (){
    List<Widget> countryList =[]; 
    for (var i = 0; i < _countryData.length; i++) {
      countryList.add(
        SignUpCountryBox(
          acticve: _countrySelected == i ? true : false,
          countryName: _countryData[i]['name'], 
          flag:  Image.asset(_countryData[i]['image'] ) , 
          onTap: ()=> setState(() {
            _countrySelected = i; 
          }),
        ),
      );
    }
    return countryList; 
  }
}