import 'package:flutter/material.dart';
import 'package:flutter_builder_pattern_demo/home/view/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'FlutterBuilderPatternDemo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen());
}
