import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(6, 90, 130, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "This app contains:",
            style: TextStyle(
              fontSize: 50,
              backgroundColor: Color(0xFF7678ed),
            ),
          ),
          SizedBox(),
          Text(
            "1) Roll a die     ",
            style: TextStyle(
              fontSize: 50,
              backgroundColor: Color(0xFF7678ed),
            ),
          ),
          SizedBox(),
          Text(
            "2) Roll the dice",
            style: TextStyle(
              fontSize: 50,
              backgroundColor: Color(0xFF7678ed),
            ),
          ),
          SizedBox(),
          Text(
            "3) Coin Flipper",
            style: TextStyle(
              fontSize: 50,
              backgroundColor: Color(0xFF7678ed),
            ),
          ),
          SizedBox(),
          Text(
            "Created by Juraj Fearplay.",
            style: TextStyle(
              fontSize: 50,
              backgroundColor: Color(0xFF7678ed),
            ),
          )
        ],
      ),
    );
  }
}
