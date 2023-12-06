// ignore_for_file: prefer_const_constructors

import 'package:app_marcelo_faculdade/widgets/bottom_style.dart';
import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  const Contador({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        BottomStyle(icon: Icons.remove),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: Text(
            '0',
            style: TextStyle(fontSize: 20),
          ),
        ),
        BottomStyle(icon: Icons.add),
      ],
    );
  }
}
