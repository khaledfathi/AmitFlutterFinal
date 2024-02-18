import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final EdgeInsets? margin; 
  final void Function()? onTapSearch ; 
  final bool? enable; 
  final Widget? suffixIcon; 
  const CustomSearchBar({super.key,
    this.margin, 
    this.onTapSearch,
    this.enable,
    this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin?? const EdgeInsets.all(20),
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(209, 213, 219, 1)),
        borderRadius: BorderRadius.circular(100),
      ) ,
      child: InkWell(
        focusColor: Colors.transparent,
        onTap: onTapSearch,
        child: TextField(
          decoration: InputDecoration(
            enabled: enable ?? true,
            border: InputBorder.none,
            prefixIcon:  const Icon(Icons.search),
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );}
}