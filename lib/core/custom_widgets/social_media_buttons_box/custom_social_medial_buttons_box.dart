import 'package:amit_flutter_final/core/core.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/social_media_button.dart';
import 'package:flutter/material.dart';

class CustomSocialMediaButtonsBox extends StatelessWidget {
  final void Function()? onTapGoogle; 
  final void Function()? onTapFacebook; 
  const CustomSocialMediaButtonsBox({super.key , 
    this.onTapGoogle, 
    this.onTapFacebook,  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /***** Google button ******/
          SocialMediaButton( name: SocialMediaNames.google,
            onTap:onTapGoogle,
          ),
          /***** -END- Google button ******/

          /***** Facebook button ******/
          SocialMediaButton(
            onTap: onTapFacebook,
          ),
          /***** -END- Facebook button ******/
        ],
      ) ,
    );
  }
}