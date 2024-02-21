
import 'package:amit_flutter_final/core/custom_widgets/text_field/custom_search_bar.dart';
import 'package:amit_flutter_final/src/views/main/home/home_search/components/home_search_header_block.dart';
import 'package:amit_flutter_final/src/views/main/home/home_search/components/home_search_preresult_line.dart';
import 'package:flutter/material.dart';

class HomeSearchScreen extends StatefulWidget {
  static const String route = 'home-search'; 
  const HomeSearchScreen({super.key});

  @override
  State<HomeSearchScreen> createState() => _HomeSearchScreenState();
}

class _HomeSearchScreenState extends State<HomeSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        titleSpacing: 0,
        title: CustomSearchBar(
          margin: const EdgeInsets.symmetric(horizontal: 10) ,
          suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.close),),
          onTapSearchIcon: () => print('search icon button is clicked'),
        ) 
      ),
      body: Padding(
        padding: const EdgeInsets.only(top : 10),
        child: Column(
            children: [
              /***** Recent Searchs*****/
              Expanded(
                child: Column(
                  children: [
                   const HomeSearchHeaderBlock(title: 'Recent Search'),
                   Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15 , left: 20 , right: 20),
                        child: ListView(
                          children: _fackeRecentSearchList(10)
                        ),
                      ), 
                   )
                  ],
                ),
              ),
              /***** -END- Recent Searchs*****/
        
              /***** Popular searches*****/
              Expanded(
                child: Column(
                  children: [
                    const HomeSearchHeaderBlock(title: 'Popular Search'),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15 , left: 20 , right: 20),
                        child: ListView(
                          children: _fackePopularSearch(10),
                        ),
                      ), 
                   )
                  ],
                ),
              ),
              /***** -END- Popular searches*****/
            ],
          ),
      ),
    );
  }

  List<Widget> _fackeRecentSearchList (int count ){
    List<Widget> recentSearchList = []; 
    for (var i = 0; i < count; i++) {
      recentSearchList.add(
        HomeSearchPreresultLine(
          prefixIcon: Icons.access_time_rounded, 
          title: 'Junior UI Designer', 
          suffixIcon: Icons.close ,
          onTapSuffixIcon: () => print('remove single item is clicked'),
        )
      );
    } 
    return recentSearchList; 
  }

  List<Widget> _fackePopularSearch (int count ){
    List<Widget> recentSearchList = []; 
    for (var i = 0; i < count; i++) {
      recentSearchList.add(
        HomeSearchPreresultLine(
          prefixIcon: Icons.manage_search_rounded, 
          title: 'UI/UX Designer', 
          suffixIcon: Icons.arrow_forward_sharp ,
          suffixIconColor: Colors.blue,
          onTapSuffixIcon: () => print('go to popular item button is clicked'),
        )
      );
    } 
    return recentSearchList; 
  }
}