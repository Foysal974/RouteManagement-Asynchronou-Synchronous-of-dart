import 'package:flutter/material.dart';
import 'package:routemanagement/screens/home_screen.dart';
class SplashScreen extends StatelessWidget{
  const SplashScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    goHomeScreen(context);

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Splash Screen'),
      //   actions: [
      //     IconButton(
      //         onPressed: (){
      //           // Navigator.pushReplacementNamed(context, LoginScreen.routeName );
      //           Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
      //         },
      //         icon: const Icon(Icons.arrow_forward)),
      //   ],
      // ),
      body:Column(mainAxisAlignment: MainAxisAlignment.center,
        children:  [
            Center(
            child: SizedBox(
              height: 40,
              width: 40,
              child: Image.asset('assets/icons/fb.png'),

            ),
          ),
          Container(
            height: 10,
          ),
          const Center(
            child: SizedBox(

            height: 40,
            width: 40,
            child: CircularProgressIndicator(),
          ),
          )
        ],
      ),

    );
  }

  Future <void> goHomeScreen(BuildContext context) async {
    await Future.delayed(const Duration(seconds:3));

    Navigator.pushReplacementNamed(context, HomeScreen.routeName,);}


    // Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);}
}

