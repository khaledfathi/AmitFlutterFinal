import 'package:flutter/material.dart';

class HomeSearchHeaderBlock extends StatelessWidget {
  final String title; 
  const HomeSearchHeaderBlock({super.key, 
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      height: 36,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromRGBO(244, 244, 245, 1),
      child:  Text(title, 
        style: const TextStyle( fontSize: 14, color: Color.fromRGBO(107, 114, 128, 1)),
      ),
    );
  }
}