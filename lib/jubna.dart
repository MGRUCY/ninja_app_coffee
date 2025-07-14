import 'package:flutter/material.dart';
import 'package:ninja_app/sandbox.dart';


class Jubna extends StatelessWidget {
  const Jubna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Coffee ID',
          style: TextStyle(
            color: Color.fromARGB(255, 223, 157, 131),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 31, 0),
        centerTitle: true,
      ),
      body: Sandbox(),
    );
  }
}
