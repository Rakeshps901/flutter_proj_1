import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(
    home: RiveEx(),
  ));
}

class RiveEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: RiveAnimation.network("https://public.rive.app/community/runtime-files/5649-11068-circle-fui.riv",fit: BoxFit.contain),
        // child: RiveAnimation.network('https://rive.app/community/5649-11068-circle-fui/embed',
        //     fit: BoxFit.contain),
      ),
    );
  }
}
