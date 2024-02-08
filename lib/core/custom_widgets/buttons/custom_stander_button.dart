import 'package:flutter/material.dart';

class CustomStanderButton extends StatelessWidget {
  final String? text ; 
  final void Function()? onPress; 

  const CustomStanderButton({super.key,
    this.text, 
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 1000,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(51, 102, 255, 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: MaterialButton(
        onPressed:onPress,  
        child: Text(
          text ?? 'text',
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ));
  }
}