import 'package:flutter/material.dart';
import 'package:flutter_application_7/item.dart';
import 'package:flutter_application_7/screens/detail_screen.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  

  @override
  State<Homescreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homescreen> {

  var formKey =  GlobalKey < FormState>();

  var nameController = TextEditingController();
  var hobbyController = TextEditingController();
  var emailController = TextEditingController();
  var descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Регистрация"),),
    body: Form(
      key: formKey, 
      child: Column(
      children: [
        TextFormField(
          controller: nameController,
          decoration: InputDecoration(labelText: "Имя"),
        validator: (value) {
          if (value == null || value.length < 3) {
            return "неправильное имя";
          } return null;
           
        },),
        TextFormField(
          controller: hobbyController,
          decoration: InputDecoration(labelText: "Фамилия"),
                validator: (value) {
          if (value == null || value.length < 3) {
            return "неправильное имя";
          } return null;
           
        },),
        TextFormField(
          controller: descriptionController,
          decoration: InputDecoration(labelText: "курс"),
                validator: (value) {
          if (value == null || value.length < 3) {
            return "неверный курс";
          } return null;
           
        },),
        TextFormField(
          controller: emailController,
          decoration: InputDecoration(labelText: "Почта"),
                validator: (value) {
          if (value == null || !value.contains("@")) {
            return "неверная почта.";
          } return null;
           
        },),
        


        TextButton(onPressed: () {

          setState(() {
            if (formKey.currentState!.validate()) {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> 
              DetailScreen(item: Item(
                name: nameController.text, 
                hobby: hobbyController.text, 
                email: emailController.text,
                description: descriptionController.text))));
            };
          });
        }, child: Text("сохранить")),
      ],),
    ),);
  }
}