import 'package:flutter/material.dart';
import 'package:flutter_proj_1/Gridex/gridview%20custom.dart';
import 'package:flutter_proj_1/contacts.dart';
import 'package:flutter_proj_1/listview/listview%20builder.dart';
import 'package:flutter_proj_1/navdrawer.dart';
import 'package:flutter_proj_1/stack%20ex.dart';
import 'package:flutter_proj_1/statefull%20loginpage%20with%20validation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: TabEx(),
  ));
}

class TabEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('WhatsApp'),
            actions: [
              Icon(Icons.search),
              Icon(Icons.camera_alt),
              PopupMenuButton(itemBuilder: (context) {
                return [PopupMenuItem(child: Text('Settings'))];
              })
            ],
            bottom: TabBar(
                //indicatorSizetabs: TabBarIndicatorSize.label,
              isScrollable: true,
                labelPadding: EdgeInsets.zero,
                tabs: [
                  SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .1,
                      child: Center(child: FaIcon(FontAwesomeIcons.peopleGroup))),
                  SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .3,
                      child: Center(child: Text('Chat'))),
                  SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .3,
                      child: Center(child: Text('Status'))),
                  SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .3,
                      child: Center(child: Text('Calls'))),
                ]),
          ),
          body: TabBarView(
            children: [
              StackEx(),
              GridCustom(),
              Login2(),
              contacts(),
            ],
          ),
        ));
  }
}