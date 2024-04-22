import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

debugShowCheckedModeBanner: false,
title: 'ClipOvel',
theme: ThemeData(

  primarySwatch: Colors.amber
),
home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>MyHomePageState();
  
  
}

class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('Clip Sides'),
      backgroundColor: Colors.blue,
    ),
    body: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Image.network('https://media.istockphoto.com/id/1519491052/photo/new-year-2024-creative-design-concept-with-book-shelf.jpg?s=612x612&w=is&k=20&c=ObDzlWCvixJ-n2xCiLsKYYCDy6_sznQOtqxZPcxLsSc='),
      ),
    ),
   );

  }
}
class MyClip extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, 100, 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
   return false;
  }

}

