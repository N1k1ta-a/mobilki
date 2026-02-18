import 'package:flutter/material.dart';
import 'package:flutter_application_7/item.dart';

class DetailScreen extends StatelessWidget {
  final Item item;
  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("данные"),),
      body: Column(children: [

        Text("Моё имя: ${item.name}"),
        Text("Моя Фамилия: ${item.hobby}"),
        Text("Почта для обращения: ${item.email}"),
        Text("Название курса: ${item.description}")


      ],),
    );
  }
}