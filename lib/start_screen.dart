import 'dart:math';

import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int currentNumber = 1;

  void changeNumber() {
    setState(() {
      currentNumber = Random().nextInt(100);
    });
  }

  void resetNumber() {
    setState(() {
      currentNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              currentNumber.isEven
                  ? Text(
                      'Even',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                    )
                  : Text(
                      'Odd',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                    ),
              SizedBox(height: 30),
              Text(
                '$currentNumber',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(width: 1.2),
                    foregroundColor: Colors.indigo,
                    backgroundColor: Colors.yellow),
                onPressed: changeNumber,
                child: const Text(
                  'Tap',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                  onPressed: resetNumber,
                  icon: Icon(
                    Icons.refresh,
                    size: 40,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
//  OutlinedButton(
//           style: OutlinedButton.styleFrom(
//               shape: const StadiumBorder(),
//               side: const BorderSide(width: 1.2),
//               foregroundColor: Colors.indigo,
//               backgroundColor: Colors.yellow),
//           onPressed: changeScreen,
//           child: Text(
//             'Tap',
//             style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//           ),
//         ),