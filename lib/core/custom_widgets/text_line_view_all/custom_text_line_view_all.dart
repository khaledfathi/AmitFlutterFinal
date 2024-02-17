import 'package:flutter/material.dart';

class CustomTextLineViewAll extends StatelessWidget {
  final EdgeInsets? margin;
  final String title ; 
  final String buttonText  ; 
  final void Function()? onPressed; 
  const CustomTextLineViewAll({super.key,
    this.margin, 
    required this.title,
    required this.buttonText, 
    this.onPressed 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Expanded(
              flex: 4,
              child: Text( title,
                style: const TextStyle(fontSize: 18),
              )),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: onPressed,
              child:  FittedBox(
                  child: Text( buttonText , style: const TextStyle( fontSize: 14,),
                  )
                ),
            ),
          )
        ],
      ),
    );
  }
}