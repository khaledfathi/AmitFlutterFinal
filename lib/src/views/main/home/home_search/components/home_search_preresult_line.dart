import 'package:flutter/material.dart';

class HomeSearchPreresultLine extends StatelessWidget {
  //prefixIcon , title , suffixIcon , suffixIcon color , onTapSuffixIcon 
  final IconData prefixIcon;  
  final String title; 
  final IconData suffixIcon ; 
  final Color? suffixIconColor; 
  final void Function()? onTapSuffixIcon;
  const HomeSearchPreresultLine({super.key,
    required this.prefixIcon,
    required this.title, 
    required this.suffixIcon,
    this.suffixIconColor,
    this.onTapSuffixIcon, 
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 22,
      child: Row(
        children: [
          //left
          Expanded(
            flex: 1,
            child: Icon(
              prefixIcon,
              size: 16,
            ),
          ),
          //middle
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10),
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(title,
                    style: const TextStyle(fontSize: 14),
                  )),
            ),
          ),
          //right
          Expanded(
              flex: 1,
              child: Center(
                child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      border: Border.all(color: suffixIconColor?? Colors.red),
                      borderRadius: BorderRadius.circular(100) ,
                    ),
                    child: InkWell(
                      onTap: onTapSuffixIcon,
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(suffixIcon, size: 20, color:suffixIconColor?? Colors.red,)),
                    )),
              ))
        ],
      ),
    );
  }
}
