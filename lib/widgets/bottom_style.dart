import 'package:flutter/material.dart';

class BottomStyle extends StatelessWidget {
  final IconData icon;
  const BottomStyle({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.deepPurple,
        minimumSize: const Size(15, 40),
      ),
      onPressed: () {},
      child: Icon(icon),
    );
  }
}
