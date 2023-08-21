import 'package:flutter_proj_1/splash3.dart';
import 'package:flutter_proj_1/statefull%20loginpage%20with%20validation.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: IntroScreen(),
  ));
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w900, fontSize: 40, color: Colors.purple),
        bodyTextStyle: GoogleFonts.abhayaLibre(
            fontStyle: FontStyle.italic,
            fontSize: 20,
            color: Colors.pinkAccent),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black,
          Colors.grey,
          Colors.white38,
          Colors.white
        ], begin: Alignment.bottomRight, end: Alignment.topLeft)));
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: 'First Page',
          body: 'Introduction Screen hows the details of app and demo of app',
          image: IntroImage(
              'https://images.unsplash.com/photo-1530319067432-f2a729c03db5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1089&q=80'),
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: 'Second Page',
          body: 'Introduction Screen hows the details of app and demo of app',
          image: IntroImage(
              'https://images.unsplash.com/photo-1500576992153-0271099def59?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80'),
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: 'Third Page',
          body: 'Introduction Screen hows the details of app and demo of app',
          image: IntroImage(
              'https://images.unsplash.com/photo-1499728603263-13726abce5fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
        ),
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Splash3())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Login2())),
      showSkipButton: true,
      skip: Text('Skip'),
      next: Icon(Icons.arrow_circle_right_outlined),
      done: Text('Done'),
      dotsDecorator: const DotsDecorator(
          size: Size(10, 12),
          color: Colors.grey,
          activeSize: Size(20, 12),
          activeColor: Colors.blue,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          )),
    );
  }

  Widget IntroImage(String image) {
    return Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(image),
        )));
  }
}
