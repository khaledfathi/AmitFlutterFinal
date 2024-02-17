import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:flutter/material.dart';

class HomeRecentJobBox extends StatelessWidget {
  const HomeRecentJobBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 103,
      child: Column(
        children: [
          /***** Row one *****/
          Expanded(
            child: Row(
              children: [
                //left
                Expanded(
                    flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset( JOB_1_ICON, fit: BoxFit.contain,),
                      ),
                    ),
                //middle
                const Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox( fit: BoxFit.scaleDown,
                          child: Text('Product Designer',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500))),
                      FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text('Zoom . United State',
                              style: TextStyle(
                                  fontSize: 12))),
                    ],
                  ),
                ),
                //right
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () => print( 'book mark button is clicked'),
                        child: const Icon( Icons.bookmark_outline_rounded,
                          size: 30,
                          color: Colors.blue,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          /***** -END- Row one *****/
          
          /***** Row Two *****/
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //left
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomStanderButton(
                            color: const Color.fromRGBO(214, 228, 255, 1),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 30,
                            text: 'Full Time',
                            textColor: Colors.blue,
                            onPress: () => print('recent job full time button is clicked '),
                          ),
                        ),
                        Expanded(
                          child: CustomStanderButton(
                            color: const Color.fromRGBO(214, 228, 255, 1),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 30,
                            text: 'Remote',
                            textColor: Colors.blue,
                            onPress: () => print('recent job remote button is clicked'),
                          ),
                        ),
                        Expanded(
                          child: CustomStanderButton(
                            color: const Color.fromRGBO(214, 228, 255, 1),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 30,
                            text: 'Senior ',
                            textColor: Colors.blue,
                            onPress: () => print('recent job senio button is clicked '),
                          ),
                        )
                      ],
                    ),
                  ),
                  //right
                  Expanded(
                    flex: 1 ,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: RichText(text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$15K', 
                              style: TextStyle(fontSize: 26 , color: Color.fromRGBO(46, 142, 24, 1))
                            ),
                            TextSpan(
                              text: '/Month',
                              style: TextStyle(fontSize: 16 , color: Color.fromRGBO(107, 114, 128, 1)),
                      
                            )
                          ]
                        ),)
                        ),
                    ),
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}