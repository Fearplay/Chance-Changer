import 'package:flutter/material.dart';

import '../app_brain.dart';

AppBrain appBrain = AppBrain();

class OneDiceRollPage extends StatefulWidget {
  const OneDiceRollPage({Key? key}) : super(key: key);

  @override
  State<OneDiceRollPage> createState() => _OneDiceRollPageState();
}

class _OneDiceRollPageState extends State<OneDiceRollPage> {
  var diceNumber = appBrain.getFirstNumber();

  void changeOneDice() {
    setState(() {
      diceNumber = appBrain.getFirstRandomNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Roll a die",
            style: TextStyle(
              fontSize: 50,
              backgroundColor: Color(0xFFe26d5c),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              changeOneDice();
            },
            child: Image.asset(
              "assets/images/dice$diceNumber.png",
              height: 300,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "To roll, click on the dice",
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
