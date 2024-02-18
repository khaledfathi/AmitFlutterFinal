import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/text_line_view_all/custom_text_line_view_all.dart';
import 'package:amit_flutter_final/src/views/main/home/components/home_header.dart';
import 'package:amit_flutter_final/src/views/main/home/components/home_recent_job_box.dart';
import 'package:amit_flutter_final/src/views/main/home/components/home_search_bar.dart';
import 'package:amit_flutter_final/src/views/main/home/components/home_suggest_job_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /***** Header *****/
              HomeHeader(
                userName: 'Rafif Dain',
                onTapNotification: () =>
                    print('notification button is clicked '),
              ),
              /***** -END- Header *****/

              /***** Search bar *****/
              const HomeSearchBar(),
              /***** -END- Search bar *****/

              /***** Suggested Jobs line *****/
              CustomTextLineViewAll(
                title: 'Suggest job',
                buttonText: 'View all',
                onPressed: () =>
                    print('suggest job button view all is clicked'),
              ),
              /***** -END- Suggested Jobs line *****/

              /***** Recent Jobs *****/
              Container(
                height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _fackeJobBoxs(10),
                ),
              ),
              /***** -END- Recent Jobs *****/

              /***** Recent Jobs line *****/
              CustomTextLineViewAll(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                title: 'Recent Job',
                buttonText: 'View all',
                onPressed: () => print('recent job button is clicked'),
              ),
              /***** -END- Recent Jobs line *****/

              /***** Recent job Items *****/
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 250,
                child: ListView(
                  children: _fakeRecentJob(10),
                ),
    )/***** -END- Recent job Items *****/
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _fackeJobBoxs (int count ){
    List<Widget> jobBoxs = []; 
    for (var i = 0; i < count; i++) {
      jobBoxs.add(
        HomeSuggestJobBox(
          jobIcon: JOB_1_ICON,
          title: 'Product Designer', 
          subTitle: 'Zoom . United State',
          categoryOne: 'Full time', 
          categoryTwo: 'Remote', 
          categoryThree: 'Design', 
          salary: '\$10-12k' ,
          onTapBookmark: ()=>print('bookmark button is clicked '),
          onTapApply: ()=>print('apply button is clicked '),
        )
      );
    }
    return jobBoxs;
  }

  List<Widget> _fakeRecentJob (int count ){
    List<Widget> recentJobBoxs = []; 
    for (var i = 0; i < count; i++) {
      recentJobBoxs.add(
        HomeRecentJobBox(
          jobIcon: JOB_1_ICON,
          title: 'Product Designer', 
          subTitle: 'Zoom . United State ', 
          categoryOne: 'Full Time', 
          categoryTwo: 'Remote', 
          categoryThree: 'Senior', 
          salary:'\$15K', 
          onTapBookmark: ()=>print('recent job bookmark is clicked'),
        )   
      );
    }
    return recentJobBoxs ;
  }
}
