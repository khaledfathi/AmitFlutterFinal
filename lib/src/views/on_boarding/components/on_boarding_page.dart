
import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/core/custom_widgets/dots_row/custom_dots_row.dart';
import 'package:amit_flutter_final/src/views/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPage extends StatelessWidget {
  static const String route = 'on-boarding-page-one';

  final String image ; 
  final RichText text ; 
  final String paragraph; 
  final int? dotsCount; 
  final int? selectedDot ; 
  final String? pageButtonText ; 
  final void Function()? onPressPageButton;
  const OnBoardingPage({super.key,
    required this.image, 
    required this.text , 
    required this.paragraph, 
    this.dotsCount , 
    this.selectedDot, 
    this.pageButtonText,
    this.onPressPageButton
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        /***** Header and Image ******/
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 424,
              width: double.infinity,
              child: _imageHandle(image),
            ),
            Positioned(
              top: 60,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      APP_LOGO_IMAGE,
                      height: 20,
                    ),
                    InkWell(
                        onTap: ()=> Navigator.pushReplacementNamed(context, LoginScreen.route), 
                        child: const Text(
                          'Skip',
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
        /***** -END- Header and Image ******/

        /*****  Text Section ******/
        Expanded(
            flex: 6,
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    width: 327,
                    child: text),
                SizedBox(
                  width: 327,
                  child: Text(paragraph,  
                    style: const TextStyle(
                        fontSize: 16, color: Color.fromRGBO(107, 114, 128, 1)),
                  ),
                ),
                Expanded(
                  child: CustomDotsRow(
                    dotCount: dotsCount ?? 3,
                    selectedDot: selectedDot ?? 1,
                  ),
                ),
              ],
            )),
        /***** -END- Text Section ******/

        /***** Page Button ******/
        Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned(
                    bottom: 30,
                    left: 0,
                    right: 0,
                    child: CustomStanderButton(text:pageButtonText, onPress: onPressPageButton,)
                    ),
              ],
            )),
        /***** -END- Page Button ******/
      ],
    ));
  }
  
  Widget _imageHandle (String image) {
      if (image.endsWith('svg'.toLowerCase())){
        return SvgPicture.asset(image , fit: BoxFit.cover,); 
      }else{
        return Image.asset(image , fit: BoxFit.cover,); 
      }
  }
}
