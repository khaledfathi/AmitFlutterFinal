import 'package:amit_flutter_final/src/views/apply_job/apply_job_people/components/apply_job_people_employee_box.dart';
import 'package:flutter/material.dart';

class ApplyJobPeopleSection extends StatelessWidget {
  const ApplyJobPeopleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          /***** Top section******/
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 42,
            child: Row(
              children: [
                const Expanded( 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('6 Employees For'),
                      Text('UI/UX Design' , style: TextStyle(color: Color.fromRGBO(107, 114, 128, 1)),),
                    ],
                  )
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromRGBO(209, 213, 219, 1)),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: FittedBox(child: Text('UI/UX Designer' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400),)),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.keyboard_arrow_down_rounded , size: 40,)
                        )
                      ],
                    ),
                  ) 
                )
              ],
            ),
          ),
          /***** -END- Top section******/

          /***** Employee List ******/
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: _fakeEmployeeList(10),
            ),
          )
          /***** -END- Employee List ******/
        ],
      ),
    );
  }
  
  //fake employee UI list 
  List<Widget> _fakeEmployeeList (int count ){
    List<Widget> employeeList = []; 
    for (var i = 0; i < count; i++) {
     employeeList.add(const ApplyJobPeopleEmployeeBox()); 
    } 
    return employeeList; 
  }
}
