import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: MyWidget()));
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double balance = 1_000;
  bool _isClicked = false;

  void _updatebalance(double amount){
    balance += amount;
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Баланс: \$$balance"),
            Image.network("https://m.media-amazon.com/images/I/617a-qtfETL._AC_UY1100_.jpg"),
            Text("Dimond Ring #6666", style: TextStyle(
              fontSize: 24
            ),),
            SizedBox(height: 10,),
            Text("Price"),
            SizedBox(height: 10,),
            Text("800 ton", style: TextStyle(
              fontSize: 24
            ),),
            SizedBox(
              width: double.infinity,
              child: FilledButton(onPressed: (){
                setState(() {
                  _isClicked = !_isClicked;
                  _isClicked ? _updatebalance(-400) :
                  _updatebalance(400);
                });
              }, child: Text(_isClicked ? "Продать": "Купить"))),
          ],
        ),
      ),
    );
  }
}