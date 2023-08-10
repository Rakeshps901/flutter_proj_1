import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1477132394330-d2376dc4c091?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGJsYWNrfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                  )),
            ),
            Positioned(
              left: 30,
              bottom: 30,
              child: Text(
                  "RAKESH P S",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),
              ),),
            Positioned(
                right: 30,
                bottom: 30,
                child: Text(
                  "VISA",
                  style: GoogleFonts.notoSerif(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25
                  ),
                ),),
            Positioned(
              right: 30,
              top: 30,
              child: Text(
                "FEDERAL BANK",
                style: GoogleFonts.notoSerif(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20
                ),
              ),),
            Positioned(
              left: 70,
              bottom: 60,
              child: Text(
                  "6 5 2 2   9 4 0 8   7 1 4 5   6 9 6 1",style: TextStyle(fontSize: 20,color: Colors.white),
              ),),
            Positioned(
              left: 30,
              top: 30,
              child: Text(
                "PLATINUM",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20
                ),
              ),),
          ],
        ),
      ),
    );
  }
}
