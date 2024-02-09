import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginAppBar extends StatelessWidget implements PreferredSize{
  const LoginAppBar({super.key});

  @override
  Widget get child => this;  
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

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
  
}