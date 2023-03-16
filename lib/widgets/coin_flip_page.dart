
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../app_brain.dart';

AppBrain appBrain = AppBrain();

class CoinFlipPage extends StatefulWidget {
  const CoinFlipPage({Key? key}) : super(key: key);

  @override
  State<CoinFlipPage> createState() => _CoinFlipPageState();
}

class _CoinFlipPageState extends State<CoinFlipPage> {
  bool _validate = false;
  final titleController = TextEditingController();
  var element = "head";

  void _checkAlert() {
    if ((titleController.text.toString().toLowerCase() == "head" &&
            element == "head") ||
        (titleController.text.toString().toLowerCase() == "tail" &&
            element == "tail")) {
      Alert(context: context, title: "You won!", desc: "It is $element").show();
    } else {
      Alert(context: context, title: "You lost!", desc: "Winner is $element")
          .show();
    }
  }

  void _checkInputText() {
    setState(() {
      if (titleController.text.toString().toLowerCase() == "head" ||
          titleController.text.toString().toLowerCase() == "tail") {
        element = appBrain.getHeadOrTail();

        _checkAlert();
        _validate = false;
      } else {
        _validate = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(73, 88, 103, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Head or Tail",
            style: TextStyle(
              fontSize: 50,
              backgroundColor: Color(0xFFe26d5c),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/$element.png",
            height: 350,
          ),
          Row(
            children: [
              const Expanded(
                child: SizedBox(
                  height: 150,
                ),
              ),
              Expanded(
                child: TextField(
                  controller: titleController,
                  style: const TextStyle(fontSize: 30),
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Enter your guess',
                      errorText: _validate ? 'Only head or tail' : null,
                      errorStyle: const TextStyle(fontSize: 20)),
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                _checkInputText();
              },
              child: const Text("Submit Guess"))
        ],
      ),
    );
  }
}
