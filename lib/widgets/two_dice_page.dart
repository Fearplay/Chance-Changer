import 'package:flutter/material.dart';

import '../app_brain.dart';

AppBrain appBrain = AppBrain();

class TwoDiceRollPage extends StatefulWidget {
  const TwoDiceRollPage({Key? key}) : super(key: key);

  @override
  State<TwoDiceRollPage> createState() => _TwoDiceRollPageState();
}

class _TwoDiceRollPageState extends State<TwoDiceRollPage> {
  int leftDiceNumber = appBrain.getFirstNumber();
  int rightDiceNumber = appBrain.getSecondNumber();

  void changeTwoDice() {
    setState(() {
      leftDiceNumber = appBrain.getFirstRandomNumber();
      rightDiceNumber = appBrain.getSecondRandomNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFba984a),
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            "Roll the dice",
            style: TextStyle(
              fontSize: 50,
              backgroundColor: Color(0xFFe26d5c),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 250,
              ),
              Expanded(
                child: Image.asset(
                  "assets/images/dice$leftDiceNumber.png",
                  height: 300,
                ),
              ),
              Expanded(
                child: Image.asset(
                  "assets/images/dice$rightDiceNumber.png",
                  height: 300,
                ),
              ),
              const SizedBox(
                width: 250,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
          changeTwoDice();
            },
            style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.amber[500]),
          foregroundColor: const MaterialStatePropertyAll(Colors.black),
          overlayColor: const MaterialStatePropertyAll(Color(0xFFf77f00)),
          elevation: const MaterialStatePropertyAll(10),
            ),
            child: const Text(
          "Roll the dice",
          style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
