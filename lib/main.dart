import 'package:flutter/material.dart';
import 'package:coffee_card/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Sand Box"),
        backgroundColor: Colors.grey,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 100,
              color: Colors.red,
              child: Text("One")
                ,),
              Container(height: 200,
                color: Colors.green,
                child: Text("One")
                ,),Container(height: 300,
                color: Colors.blue,
                child: Text("One")
                ,),

            ],
          ),
    );
  }
}


