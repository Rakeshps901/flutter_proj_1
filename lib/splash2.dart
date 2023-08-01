import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Splash2()));
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///set background color 1
        //backgroundColor: Colors.grey,
        body: Container(
          ///set background color way 2 using gradient inside container
      decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //     begin: Alignment.bottomRight,
          //     end: Alignment.topRight,
          //     colors: [Colors.purple, Colors.white38])
          ///set background color way 3
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/bckgrnd1.jpg"))
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.sailing_outlined,
            //     size: 30,
            //     color: Colors.black),//Icon
            Image.asset(
              "assets/icons/hp.png",
              height: 200,
              width: 200,
            ),
            const Text(
              " Hewlett-Packard ",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black), //TextStyle
            ),
          ],
        ),
      ),
    ));
  }
}
