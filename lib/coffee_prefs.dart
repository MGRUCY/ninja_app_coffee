import 'package:flutter/material.dart';
import 'package:ninja_app/style_body_test.dart';
import 'package:ninja_app/styled_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength += 1 : strength = 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugar = sugar < 5 ? sugar += 1 : sugar = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyleBodyTest('Strength: '),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 30,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseStrength,
              child: const Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            const StyleBodyTest('Sugar: '),
            if (sugar == 0) const StyleBodyTest('no sugar...'),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 30,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseSugars,
              child: const Text('+'),
            )
          ],
        )
      ],
    );
  }
}
