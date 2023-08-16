import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: BottomSheett(),
  ));
}

class BottomSheett extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet with image on tap'),
      ),
      body: Center(
        child: GestureDetector(
            // we can use Inkwell also performing actions
            onLongPress: () => showSheet(context),
            child: Image.asset('assets/images/ham.png')),
      ),
    );
  }
}

void showSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.green,
                ),
                title: Text('Whatsapp'),
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                ),
                title: Text('Facebook'),
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.message,
                  color: Colors.black,
                ),
                title: Text('Message'),
              )
            ],
          ),
        );
      });
}
