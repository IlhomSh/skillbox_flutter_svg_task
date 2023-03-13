// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/flutter_logo.svg",
    "assets/linkedin.svg",
    "assets/clock.svg",
  ];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CarouselSlider(

          slideTransform: ZoomOutSlideTransform(),

          children: images.map((e) => SvgPicture.asset(e)).toList(),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
