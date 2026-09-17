import 'package:coffee_card/coffee_pref.dart';
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
            ),),
          backgroundColor: Colors.brown[700],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.brown[200],
                padding: const EdgeInsets.all(20),
              child: const Text("How I like my aquarium.....",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
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