import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/enum/social_media/social_media_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaButton extends StatelessWidget {
  final SocialMediaNames? name ; 
  final void Function()? onTap; 
  //values 
  String text = 'google';

  SocialMediaButton({super.key , 
    this. name, 
    this. onTap 
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 46,
        width: 154,
        alignment: Alignment.center,
        decoration: BoxDecoration( 
          border: Border.all( color: const Color.fromRGBO(209, 213, 219, 1)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: _setIcon(),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
  SvgPicture _setIcon (){
    if (name == SocialMediaNames.google){
      text = 'Google';
      return SvgPicture.asset(GOOGLE_ICON , width: 20 , height: 20,);
    }else{
      text = 'Facebook';
      return SvgPicture.asset(FACEBOOK_ICON , width: 20 , height: 20,);
    }
  }
}