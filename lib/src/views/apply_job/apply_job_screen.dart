import 'package:amit_flutter_final/core/constants/general.dart';
import 'package:amit_flutter_final/core/custom_widgets/buttons/custom_stander_button.dart';
import 'package:amit_flutter_final/src/views/apply_job/apply_job_company/apply_job_company_section.dart';
import 'package:amit_flutter_final/src/views/apply_job/apply_job_description/apply_job_description_section.dart';
import 'package:amit_flutter_final/src/views/apply_job/apply_job_people/apply_job_people_section.dart';
import 'package:flutter/material.dart';

class ApplyJobScreen extends StatefulWidget {
  static const String route = 'apply-job';
  const ApplyJobScreen({super.key});

  @override
  State<ApplyJobScreen> createState() => _ApplyJobScreenState();
}

class _ApplyJobScreenState extends State<ApplyJobScreen> with SingleTickerProviderStateMixin {
  
  late TabController _tabBarController;
  int _tabBarSelected = 0 ; 

  @override
  void initState() {
    _tabBarController = TabController(length: 3, vsync: this);
    _tabBarController.addListener(() {
      _tabBarSelected =  _tabBarController.index;
      setState(() { });
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabBarController.removeListener(() { });
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Job Details'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark,
                    color: Colors.blue,
                  )),
            ),
          ],
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              /***** Header Box ******/
              SizedBox(
                height: 160,
                width: 250,
                child: Column(
                  children: [
                    /***** header image ******/
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 48,
                      width: 48,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(APPLY_JOB_TWITTER_ICON),
                    ),
                    /***** -END- header image ******/

                    /***** Job Title *****/
                    const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Senior UI Designer',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    /***** -END- Job Title *****/

                    /***** Job subtitle*****/
                    const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Twitter . UI Designer',
                        style: TextStyle(
                            fontSize: 15, color: Color.fromRGBO(55, 65, 81, 1)),
                      ),
                    ),
                    /***** -END- Job subtitle*****/

                    /***** Job category names row *****/
                    const Padding(
                      padding:  EdgeInsets.only(top: 10),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: CustomStanderButton(
                            margin: EdgeInsets.symmetric(horizontal: 2.5),
                            text: 'Full Time ',
                            height: 30,
                            width: 73,
                            color: Color.fromRGBO(214, 228, 255, 1),
                            textColor: Color.fromRGBO(51, 102, 255, 1),
                          )),
                          Expanded(
                              child: CustomStanderButton(
                            margin: EdgeInsets.symmetric(horizontal: 2.5),
                            text: 'OnSite',
                            height: 30,
                            width: 73,
                            color: Color.fromRGBO(214, 228, 255, 1),
                            textColor: Color.fromRGBO(51, 102, 255, 1),
                          )),
                          Expanded(
                              child: CustomStanderButton(
                            margin: EdgeInsets.symmetric(horizontal: 2.5),
                            text: 'Senior',
                            height: 30,
                            width: 73,
                            color: Color.fromRGBO(214, 228, 255, 1),
                            textColor: Color.fromRGBO(51, 102, 255, 1),
                          )),
                        ],
                      ),
                    ),
                    /***** -END- Job category names row *****/
                  ],
                ),
              ),
              /***** -END- Header Box ******/

              /***** Job Details Body *****/
              //tap bar
              DefaultTabController(
                  length: 3,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20 , right: 20 , top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromRGBO(244, 244, 245, 1),
                    ),
                    child: TabBar(
                      controller: _tabBarController,
                      indicatorColor: Colors.transparent,
                      labelPadding: const EdgeInsets.all(0),
                      onTap: (selected) => _tabBarSelected = selected ,
                      tabs: _tabBarItems(_tabBarSelected),
                    ),
                  )),
              //tab bar body
              Expanded(
                  child: Container(
                child: TabBarView(
                  controller: _tabBarController,
                  children: const [
                    ApplyJobDescriptionSection(),
                    ApplyJobCompanySection(),
                    ApplyJobPeopleSection()
                  ],
                ),
              )),
              /***** -END- Job Details Body *****/

              /***** Apply Button *****/
              const CustomStanderButton(
                text: 'Apply now',
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              )
              /***** -END- Apply Button *****/
            ],
          ),
        ));
  }

  ///create three tab bars 
  List<Widget> _tabBarItems(int activedTab) {
    List<Widget> tabBaritems = [];
    List<String> titles = ['Description', 'Company', 'People'];
    for (var i = 0; i < titles.length; i++) {
      tabBaritems.add(Tab(
        child: CustomStanderButton(
          text: titles[i],
          margin: const EdgeInsets.all(0),
          color: activedTab == i
              ? const Color.fromRGBO(2, 51, 122, 1)
              : const Color.fromRGBO(244, 244, 245, 1),
          textColor: activedTab == i
              ? Colors.white
              : const Color.fromRGBO(2, 51, 122, 1),
        ),
      ));
    }
    return tabBaritems;
  }
}
