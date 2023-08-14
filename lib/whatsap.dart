import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView2(),));
}
class ListView2 extends StatelessWidget {
  var name = ['Appukuttan','Akhil','Akshay','Ron','Amal','Rejo','Abhi','Parthan','Jishnu','Gokul'];
  var image=['assets/images/car.jpg','assets/images/blue.jpg','assets/images/dog.jpg','assets/images/fruit.jpg','assets/images/jao.jpg',
    'assets/images/pic.jpg','assets/images/sm.jpg','assets/images/sm.jpg','assets/images/1652439.jpg','assets/images/login.png'];
  var time=['1:10 pm','3:16 pm','1:56 pm','8:10 am','6:59 am','7:10 pm','9:10 am','2:30 pm','4:45 pm','5:21 am',];
  var msg=['sticker','Hi','Anime vera ondo','hei','mone','sugalle',' openheimer kanan  poyalo','are u bzy','when is your next trip ', 'mere desh vaasiyom'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 40,),
            Icon(Icons.search),
            SizedBox(width: 20,),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('New Group')),
                PopupMenuItem(child: Text('New Broadcast')),
                PopupMenuItem(child: Text('Linked devices')),
                PopupMenuItem(child: Text('Stared messages')),
                PopupMenuItem(child: Text('Payment')),
                PopupMenuItem(child: Text('Settings'))
              ];
            })

          ],
          title: Text('Whatsapp')),
      body: ListView(

        children: List.generate(10, (index) =>
            Card(
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(msg[index]),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(image[index]),),
                trailing: Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(time[index]),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            minRadius: 2,
                            maxRadius: 10,
                            backgroundColor: Colors.teal,
                            child: Text('2')
                        ),
                      )
                    ]
                ),
              ),
            )),
      ),
    );
  }
  }