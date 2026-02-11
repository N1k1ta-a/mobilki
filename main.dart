import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/homescreen.dart';

void main(List<String> args) {
  runApp(MyWidget());
}



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homescreen(),);
  }
}