import 'package:flutter/material.dart';

class LoginOptionLine extends StatelessWidget {
  final bool? checkBoxValue;  
  final void Function(bool?)? onChangeCheckBox;
  final void Function()? onTapForgetPassword; 
  const LoginOptionLine({super.key , 
    this.checkBoxValue, 
    this.onChangeCheckBox,
    this.onTapForgetPassword,  
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(value: true, onChanged: onChangeCheckBox ),
              const Text('Remeber me' , style: TextStyle(fontSize: 14),)
            ],
          ),
          Padding(padding: const  EdgeInsets.only(right: 20) , 
            child:InkWell(
              onTap: onTapForgetPassword, 
              child: const Text('Forget password' , style: TextStyle(color:Color.fromRGBO(51, 102, 255, 1)),),
            ) , 
          ),
          
        ],
      ) ,
    );
  }
}