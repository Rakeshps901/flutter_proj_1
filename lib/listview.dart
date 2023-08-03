import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: ListView1(),));
}
class ListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("HamBurger"),
            subtitle: Text("\$190"),
            trailing: Icon(Icons.shopping_cart),
            leading: Image.asset("assets/images/download.jpg"),
          ),
          Text("Item 2"),
          Text("Item 3"),
          Text("Item 4"),
          Text("Item 5"),
        ],
      ),
    );
  }
}
