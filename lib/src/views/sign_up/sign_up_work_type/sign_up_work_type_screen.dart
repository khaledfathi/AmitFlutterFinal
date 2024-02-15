import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_header/custom_text_header.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up_location/sign_up_location_screen.dart';
import 'package:amit_flutter_final/src/views/sign_up/sign_up_work_type/components/sign_up_work_type_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpWorkTypeScreen extends StatelessWidget {
  static const String route = 'sign-up-work-type';

  final List<Map> _workTypes = const [
    {'title':'UI/UX Designer' , 'icon' : UI_UX_WORK_ICON},
    {'title':'Ilustrator Designer' , 'icon' : ILUSTRATOR_WORK_ICON},
    {'title':'Developer' , 'icon' : DEVELOPER_WORK_ICON},
    {'title':'Managment' , 'icon' : MANAGMENT_WORK_ICON},
    {'title':'Information tehnology' , 'icon' : IT_WORK_ICON},
    {'title':'Research and Analytics' , 'icon' : RESEARCH_WORK_ICON},
  ];
  const SignUpWorkTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        children: [
          /***** Header Text *****/
          const CustomTextHeader(
            height: 150,
            title: 'What kind of work are you intersted in ?',
            subtitle:
                'Tell us what you\'re interested in so we can customise the app for your needs',
          ),
          /***** -END- Header Text *****/

          
          /***** Type of works grid *****/
          Expanded(
            flex: 6,
              child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                childAspectRatio: 156 / 125),
            padding: const EdgeInsets.all(20),
            itemCount: _workTypes.length,
            itemBuilder: (context , index){
              return SignUpWorkTypeBox(
                onTap: ()=>print('work type nmber $index is clicked'),
                active: true,
                icon: SvgPicture.asset(_workTypes[index]['icon']),
                title: _workTypes[index]['title'],
              );
            },
          )),
          /***** -END- Type of works grid *****/

          /***** Next button *****/
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned(
                  bottom: 40,
                  left: 0,
                  right: 0,
                  child: CustomStanderButton(
                    text: 'Next',
                    margin: const EdgeInsets.symmetric(horizontal: 20 ),
                    onPress: ()=> Navigator.pushNamed(context, SignUpLocationScreen.route ),
                  ),
                ),
              ],
            ),
          ),
          /***** Next button *****/
        ],
      ),
    );
  }
}
