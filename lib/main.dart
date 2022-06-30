import 'package:flutter/material.dart';
import 'package:routemanagement/screens/splash_screen.dart';
import 'package:routemanagement/screens/login_screan_dart.dart';
import 'package:routemanagement/screens/home_screen.dart';
import 'package:routemanagement/screens/screen_one.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Route Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.amber
      ),
      initialRoute: '/',

      routes: {
      '/':(context)=> const SplashScreen(),
        // '/home_screen':(context)=>HomeScreen(),
        LoginScreen.routeName:(context)=>LoginScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        ScreenOne.routeName:(context)=>ScreenOne(),

      },


    );
  }
}
