import 'package:flutter/material.dart';
import 'package:routemanagement/screens/home_screen.dart';

class LoginScreen extends StatelessWidget{
static const routeName='/login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login Screen'),
          actions: [IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName,arguments:{
                'title':'Home Screen',});
              },
              icon: Icon(Icons.arrow_forward_outlined)
          )],
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child:RaisedButton(onPressed:(){Navigator.pushNamed(context, HomeScreen.routeName,);},
              child: const Text('Login'),
           ),
         )],

        )
    );
  }
}