import 'package:flutter/material.dart';
import 'package:flutter_proj_1/passing%20data%20between%20screens/using%20constructor/to_stateful_page.dart';
import 'package:flutter_proj_1/passing%20data%20between%20screens/using%20constructor/to_stateless_page.dart';

void main()
{
  runApp(MaterialApp(home: DataPage(),));
}
class DataPage extends StatelessWidget {
  final String name ="Luminar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passing data between screens using constructor"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 200,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => StatelessPage(
                          name: name,
                          location: "Kakkanad",
                          phone: 9947837497)));
                },
                child: Text('To Stateless Page')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => StatefulPage(
                          name: name,
                          location: "Kakkanad",
                          phone: 9638527410)));
                },
                child: Text('To Stateful Page'))
          ],
        ),
      ),
    );
  }
}
