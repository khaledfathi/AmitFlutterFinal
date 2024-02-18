import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:flutter/material.dart';

class HomeRecentJobBox extends StatelessWidget {
  final String jobIcon ; 
  final String title; 
  final String subTitle; 
  final void Function()? onTapBookmark; 
  final String categoryOne ; 
  final String categoryTwo; 
  final String categoryThree; 
  final String salary; 
  const HomeRecentJobBox({super.key, 
    required this.jobIcon,
    required this.title, 
    required this.subTitle,
    this.onTapBookmark,
    required this.categoryOne,
    required this.categoryTwo,
    required  this.categoryThree,
    required this.salary,
  });

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
                        child: Image.asset( jobIcon, fit: BoxFit.contain,),
                      ),
                    ),
                //middle
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox( fit: BoxFit.scaleDown,
                          child: Text(title,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500))),
                      FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(subTitle,
                              style: const TextStyle( fontSize: 12))),
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
                        onTap: onTapBookmark, 
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
                          text: categoryOne, 
                          textColor: Colors.blue,
                        ),
                      ),
                      Expanded(
                        child: CustomStanderButton(
                          color: const Color.fromRGBO(214, 228, 255, 1),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          height: 30,
                          text: categoryTwo,
                          textColor: Colors.blue,
                        ),
                      ),
                      Expanded(
                        child: CustomStanderButton(
                          color: const Color.fromRGBO(214, 228, 255, 1),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          height: 30,
                          text: categoryThree,
                          textColor: Colors.blue,
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
                            text: salary,
                            style: const TextStyle(fontSize: 26 , color: Color.fromRGBO(46, 142, 24, 1))
                          ),
                          const TextSpan(
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
          ),
        ],
      ),
    );
  }
}