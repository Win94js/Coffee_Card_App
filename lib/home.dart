import 'package:coffee_card/coffee_pref.dart';
import 'package:coffee_card/style_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const  Text("Coffee Card App" ,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,

            ),
          ),
          backgroundColor: Colors.brown[700],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.brown[200],
                padding: const EdgeInsets.all(20),
              child: const StyleBodyText("How I love my aquarium...")
            ),
            Container(
              color: Colors.brown[100],
              padding: const EdgeInsets.all(20),
              child: const CoffeePref(),
            ),
             Expanded(child: Image.asset('assets/img/bg.jpg'
             ,
             fit: BoxFit.fitHeight,
               alignment:  Alignment.bottomCenter,

             )
             )
          ],
        )
    );
  }
}