import 'package:flutter/material.dart';

class CustomTextLineWithNavigator extends StatelessWidget {
  final EdgeInsets? margin; 
  final String? text; 
  final String? buttonText; 
  final void Function()? onTap ;  
  const CustomTextLineWithNavigator({super.key , 
    this.margin,
    this.text,
    this.buttonText,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            text ?? 'text ', 
            style: const TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(156, 163, 175, 1)),
          ),
          InkWell(
            onTap: onTap,
            child:  Text(
              buttonText ?? 'button text', 
              style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(51, 102, 255, 1)),
            ),
          )
        ],
      ),
    );
  }
}