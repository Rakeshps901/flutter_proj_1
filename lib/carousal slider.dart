import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CSlider(),
  ));
}

class CSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1691862337281-24532802bad5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60"))),
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1691944435602-a219037ac417?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60"))),
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1691269578576-880efb468e14?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60"))),
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://plus.unsplash.com/premium_photo-1674581220087-d4ee95c5cc3f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60"))),
            ),
          ],
          options: CarouselOptions(
            initialPage: 0,
            height: 500,
            aspectRatio: 16 / 9,
            viewportFraction: .5,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 3),
            enlargeCenterPage: true,
            enlargeFactor: .3,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
