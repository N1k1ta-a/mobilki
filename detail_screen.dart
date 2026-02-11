import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/item.dart';

class DetailScreen extends StatelessWidget {
  final Item item;
  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("данные"),),
      body: Column(children: [

        Text(item.name),
        Text(item.hobby),
        Text(item.email),


      ],),
    );
  }
}