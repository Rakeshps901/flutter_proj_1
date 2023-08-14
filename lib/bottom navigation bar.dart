import 'package:flutter/material.dart';
import 'package:flutter_proj_1/Gridex/gridview%20custom.dart';
import 'package:flutter_proj_1/contacts.dart';
import 'package:flutter_proj_1/stack%20ex.dart';
import 'package:flutter_proj_1/statefull%20loginpage%20with%20validation.dart';

void main() {
  runApp(MaterialApp(home: BottomNaviBar(),));
}

class BottomNaviBar extends StatefulWidget {

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int index = 0;
  var screen=[
    StackEx(),
    GridCustom(),
    contacts(),
    Login2()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        onTap: (tappedindex){
          setState((){
          index = tappedindex;
        });
        },

        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
              icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
              icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
              icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
              icon: Icon(Icons.add_box_rounded), label: 'Create'),
        ]),
      body: Center(
        child: screen[index],
      ),
    );
  }
}
