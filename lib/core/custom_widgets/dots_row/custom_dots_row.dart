import 'package:flutter/material.dart';

class CustomDotsRow extends StatelessWidget {
  final int dotCount ; 
  final int selectedDot; 
  final EdgeInsets? margin; 
  final Color? color ;  
  const CustomDotsRow({super.key, 
    required this.dotCount , 
    required this.selectedDot, 
    this.margin, 
    this.color, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildRow(dotCount, selectedDot),
      ),
    ) ;
  }
  
  ///Build dots in rows 
  ///precondition -> selected should be in range  1:count 
  List<Widget> _buildRow(int count , int selected){
    if(selectedDot > count ) throw Exception('CustomDotsRow : selectedDots is out of dotCount range'); 
    List<Widget> rows =[]; 
    for (var i = 0; i < count; i++) {
      rows.add(
        Padding(padding: const EdgeInsets.symmetric(horizontal: 3) , 
          child: Icon(Icons.circle , size: selected-1 == i ? 20 : 10 , 
            color: Colors.blue,
          ), 
        )
      );
    }
    return  rows; 
  }
}