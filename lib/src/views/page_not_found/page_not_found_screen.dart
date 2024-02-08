import 'package:flutter/material.dart';

class PageNotFoundScreen extends StatelessWidget {
  static const String route = 'not-found'; 
  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text('Page Not Found'),),
    ); 
  }
}