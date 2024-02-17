import 'package:amit_flutter_final/src/views/main/applied/applied_screen%20copy.dart';
import 'package:amit_flutter_final/src/views/main/home/home_screen.dart';
import 'package:amit_flutter_final/src/views/main/messages/messages_screen.dart';
import 'package:amit_flutter_final/src/views/main/profile/profile_screen.dart';
import 'package:amit_flutter_final/src/views/main/saved/saved_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String route = 'main-screen';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selected = 0 ; 
  final List<Widget> _screens = const [
    HomeScreen() , 
    MessagesScreen(), 
    AppliedScreen(), 
    SavedScreen(), 
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: _selected,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (value)=> setState(() {
            _selected = value;
          }),
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home , size: 24,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message, size: 24), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.business_center_outlined, size: 24), label: 'Applied'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border , size: 24), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 24), label: 'Profile'),
        ]),
      ), 
      body: _screens[_selected],
    );
  }
}