import 'package:flutter/material.dart';

class AppliedScreen extends StatelessWidget {
    static const String route = 'applied'; 
  const AppliedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Applied Screen'),), 
    );
  }
}