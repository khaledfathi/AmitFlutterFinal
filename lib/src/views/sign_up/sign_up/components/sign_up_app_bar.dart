import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUPAppBar extends StatelessWidget implements PreferredSize{
  const SignUPAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        scrolledUnderElevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset(APP_LOGO_IMAGE , height: 19, width: 81,),
          )
        ],

    );
  }
  
  @override
  Widget get child => this; 
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight) ;
}