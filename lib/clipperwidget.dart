import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main() {
  runApp(MaterialApp(
    home: Clipper(),
  ));
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
                child: Align(
                    heightFactor: .9,
                    widthFactor: .4,
                    child: Image.network(
                        'https://images.unsplash.com/photo-1595760780346-f972eb49709f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'))),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                  'https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
          ),
          ClipOval(
              child: Image.network('https://images.unsplash.com/photo-1590523330785-fb01d1b5496c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDE5fHhIeFlUTUhMZ09jfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
          ),
          ClipPath(
            clipper: StarClipper(10),
            child: Image.network('https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
          )
        ],
      ),
    );
  }
}
