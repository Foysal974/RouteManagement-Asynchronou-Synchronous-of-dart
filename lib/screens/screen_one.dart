import 'package:flutter/material.dart';
import 'package:routemanagement/screens/home_screen.dart';
import 'package:routemanagement/screens/login_screan_dart.dart';

class ScreenOne extends StatelessWidget{
  static const String routeName='/Screen_One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_outlined),)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [Center(
          child: RaisedButton(onPressed: (){
            Navigator.pop(context);
            // Navigator.pushNamed(context,LoginScreen.)
          },
            child:const Text('Back'),
          ),
        )

        ],
      ),
    );
  }
}