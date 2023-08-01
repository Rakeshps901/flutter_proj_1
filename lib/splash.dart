import 'package:flutter/material.dart';

void main()
{
  //runApp attach widget tree to the UI
  runApp(MaterialApp(home: MysplashPage(),));
}  //Material App
class MysplashPage extends StatelessWidget
    //this page does not undergo any state change
{
  @override
  Widget build(BuildContext context)
  //Entire screen
  {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}