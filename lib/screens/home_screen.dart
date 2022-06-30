import 'package:flutter/material.dart';
import 'package:routemanagement/screens/screen_one.dart';

class HomeScreen extends StatelessWidget{

  static const String routeName='/home_screen';
  var myTile='Home screen';

  @override
  Widget build(BuildContext context) {
    var myPassedData=ModalRoute.of(context)?.settings.arguments as Map;
    myTile=myPassedData['title'];
  return Scaffold(
    appBar: AppBar(
      title: Text(myTile),
        actions: [IconButton(
        onPressed: () {
          Navigator.pushNamed(context, ScreenOne.routeName);

        },
             icon: const Icon(Icons.arrow_forward_outlined),

            ),
          ],
        ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [Center(
        child: RaisedButton(onPressed: (){
          Navigator.pushNamed(context, ScreenOne.routeName);
          // Navigator.pop(context);
        },
          child:const Text('Screen One'),
        ),
      )

      ],
    ),
  );
  }
}