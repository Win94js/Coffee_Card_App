import 'package:coffee_card/style_body_text.dart';
import 'package:coffee_card/style_button.dart';
import 'package:flutter/material.dart';

class CoffeePref extends StatefulWidget {
  const CoffeePref({super.key});

  @override
  State<CoffeePref> createState() => _CoffeePrefState();
}

class _CoffeePrefState extends State<CoffeePref> {

  int strength = 1;
  int sugar = 1;

  void increaseStrength(){
    setState(() {
      strength = strength < 5 ? strength + 1: 1;

    });
  }

  void increaseSugar(){
    setState(() {
      sugar =  sugar < 5 ? sugar + 1 : 0;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyleBodyText("Strength: "),

            for(int i = 0 ; i< strength; i++)
              Image.asset("assets/img/coffee_bean.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),


            const Expanded(child: SizedBox(width: 50,)),
            StyleButton(onPressed: increaseStrength, child: Text("+"))
          ],
        ),
        Row(
          children: [
            const StyleBodyText("Sugars: "),
            // Text("$sugar"),
            if(sugar == 0 )
              Text("No Sugar is added...."),
            for(int i=0 ; i<sugar; i++)
              Image.asset("assets/img/sugar.jpg",
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,),

            Expanded(child: SizedBox(width: 50,)),
            StyleButton(onPressed: increaseSugar, child: const Text("+"))
          ],
        )
      ],
    );
  }
}
