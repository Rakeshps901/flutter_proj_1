import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  ImageProvider myimage;
  final String name;
  final String price;

  NewWidget({super.key, required this.myimage, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: myimage,height: 100,width: 100,),
          Text(name),
          Text(price!),
          Row(
            children: [
              ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.favorite),label: Text('Wishlist'),),
              SizedBox(width: 20,),
              ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.shopping_cart),label: Text('Buy Now'),),
            ],
          )
        ],
      ),
    );
  }
}
