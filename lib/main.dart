import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Coffee Card App" ,
          style: TextStyle(
            color: Colors.white,
          ),),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.orange,
        width: 200,
        height: 100,
        padding: EdgeInsets.all(20.0),
        margin: const EdgeInsets.only(left: 20),
        child: Text("Hello Alpha Aquarium", style: TextStyle(
          fontSize: 18,
          letterSpacing: 4,
          decoration: TextDecoration.underline,
          fontStyle: FontStyle.italic,

        ),),
      )
    );
  }
}
