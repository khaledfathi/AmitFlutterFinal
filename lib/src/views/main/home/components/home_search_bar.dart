import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(209, 213, 219, 1)),
        borderRadius: BorderRadius.circular(100),
      ) ,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: InkWell(
            child: const Icon(Icons.search),
            onTap: ()=> print('Search icon button is clicked'),
          )
        ),
      ),
    );
  }
}