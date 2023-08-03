import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: ListView1(),
  ));
}

class ListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: [
          Text("Select your Food",style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
          Card(
            child: ListTile(
              title: Text("HamBurger"),
              subtitle: Text("\$190"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/ham.png") ,
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Pizza"),
              subtitle: Text("\$350"),
              trailing: Icon(Icons.shopping_cart,color: Colors.teal,),
              leading: Image.asset("assets/images/pizza.png") ,
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Salad"),
              subtitle: Text("\$400"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/salad.png") ,
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Cake"),
              subtitle: Text("\$400"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/cake.png") ,
            ),
          ),
        ],
      ),
    );
  }
}