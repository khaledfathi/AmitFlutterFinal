import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:flutter/material.dart';

class HomeSuggestJobBox extends StatelessWidget {
  const HomeSuggestJobBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(9, 26, 122, 1),
          borderRadius: BorderRadius.circular(12)),
      height: 183,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /***** Row one *****/
          Expanded(
            child: Row(
              children: [
                //left
                Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          JOB_1_ICON,
                          width: 32,
                          height: 32,
                        ),
                      ),
                    )),
                //middle
                const Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text('Product Designer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500))),
                      FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text('Zoom . United State',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12))),
                    ],
                  ),
                ),
                //right
                Expanded(
                    flex: 1,
                    child: Center(
                      child: InkWell(
                        onTap: () => print('book mark button is clicked'),
                        child: const Icon(
                          Icons.bookmark_outline_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          /***** -END- Row one *****/

          /***** Row Two *****/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //left
                  Expanded(
                      child: Container(
                    child: CustomStanderButton(
                      color: const Color.fromRGBO(255, 255, 255, 0.14),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 35,
                      text: 'Full Time',
                      onPress: () => print('full time button is clicked'),
                    ),
                  )),
                  //middle
                  Expanded(
                      child: Container(
                    child: CustomStanderButton(
                      color: const Color.fromRGBO(255, 255, 255, 0.14),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 35,
                      text: 'Remote',
                      onPress: () => print(' remote button is clicked'),
                    ),
                  )),
                  //right
                  Expanded(
                      child: Container(
                    child: CustomStanderButton(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      color: const Color.fromRGBO(255, 255, 255, 0.14),
                      height: 35,
                      text: 'Design',
                      onPress: () => print('design button is clicked'),
                    ),
                  ))
                ],
              ),
            ),
          ),
          /***** -END- Row Two *****/

          /***** Row three *****/
          Expanded(
            child: Row(
              children: [
                //left
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: RichText(
                          text: const TextSpan(
                              text: '\$12-15k',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                              children: [
                            TextSpan(
                                text: '/month',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(255, 255, 255, 0.5))),
                          ]))),
                )),
                //right
                Expanded(
                    child: Container(
                  child: CustomStanderButton(
                    text: 'Apply Now',
                    height: 32,
                    onPress: () => print('apply now button is clicked'),
                  ),
                ))
              ],
            ),
          )
          /***** -END- Row three *****/
        ],
      ),
    );
  }
}
