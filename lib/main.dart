import 'package:amit_flutter_final/core/core.dart';
import 'package:amit_flutter_final/src/views/on_boarding/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main (){
  AppConfig().apply();
  runApp(const App()); 
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.route ,
      onGenerateRoute: RouteHandler.generateRoutes ,
    ); 
  }
}