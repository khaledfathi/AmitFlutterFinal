import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:flutter/material.dart';

class ApplyJobPeopleEmployeeBox extends StatelessWidget {
  const ApplyJobPeopleEmployeeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color.fromRGBO(229, 231, 235, 1)))
      ),
      height: 75,
      child:  Row(
        children: [
          Expanded(
            flex:1 , 
            child: CircleAvatar(
              child: Image.asset(APPLY_JOB_PERSON),
            ) 
          ),
          const SizedBox(width: 10,),
          const Expanded(
            flex:4 ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(child: Text('Dima Adi Saputro')),
                FittedBox(child: Text('Senior UI/UX Designer at Twitter ')),
              ],
            )
          ),
          const Expanded(
            flex:2 , 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FittedBox(child: Text('Working during')),
                FittedBox(child: Text('5 Years')),
              ],
            )
          ),
        ],
      )
    );
  }
}