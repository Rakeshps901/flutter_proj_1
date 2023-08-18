import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Clipper(),));
}
class Clipper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clipper Widget'),
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Container(
                child:Align(
            heightFactor: .9,
        widthFactor: .4,
      child: Image.network('https://images.unsplash.com/photo-1595760780346-f972eb49709f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'))),
          )
        ],
      ),
    );
  }
}
