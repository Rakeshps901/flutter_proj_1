import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main()
{
  runApp(MaterialApp(home: LotAnime(),));
}
class LotAnime extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 200,
          width: 200,
          child:
          Lottie.asset("assets/animation/twitter.json")),
      SizedBox(
        height: 200,
        width: 200,
        child:
        Lottie.network("https://lottie.host/8ef6e9fc-4368-4aba-a5a1-86f7d160e7f5/qV4FzuETkG.json"))
        ],
      ),
    );
  }
}
