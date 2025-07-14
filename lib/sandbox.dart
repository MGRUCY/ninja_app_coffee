import 'package:flutter/material.dart';
import 'package:ninja_app/coffee_prefs.dart';
import 'package:ninja_app/style_body_test.dart';

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});
  //const Color.fromARGB(255, 121, 85, 72)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.brown[200],
          padding: const EdgeInsets.all(20),
          child: const StyleBodyTest('content:'),
        ),
        Container(
          color: Colors.brown[100],
          padding: const EdgeInsets.all(20),
          child: CoffeePrefs(),
        ),
        Expanded(
          child: Image.asset(
            'assets/img/coffee_bg.jpg',
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ],
    ));
  }
}

























      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      // children: [
      //     Container(
      //       color: Color.fromARGB(255, 46, 0, 0),
      //       padding: const EdgeInsets.all(20),
      //       child: const Text(
      //         'warm', 
      //         style: TextStyle(
      //           color: Color.fromARGB(255, 175, 123, 103),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       color: Color.fromARGB(255, 46, 0, 0),
      //       padding: const EdgeInsets.all(20),
      //       child: const Text(
      //         'sweet',
      //         style: TextStyle(
      //           color: Color.fromARGB(255, 175, 123, 103),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       color: Color.fromARGB(255, 46, 0, 0),
      //       padding: const EdgeInsets.all(20),
      //       child: const Text(
      //         'lovely', 
      //         style: TextStyle(
      //           color: Color.fromARGB(255, 175, 123, 103),
      //         ),
      //       ),
      //     ),
      //   ],
      //   
      // ),