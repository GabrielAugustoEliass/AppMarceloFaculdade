import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CheckBoxTitulo extends StatefulWidget {
  final String titulo;
  bool? isValue;
  CheckBoxTitulo({super.key, required this.titulo, required this.isValue});

  @override
  State<CheckBoxTitulo> createState() => _CheckBoxTituloState();
}

class _CheckBoxTituloState extends State<CheckBoxTitulo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: widget.isValue,
          onChanged: (value) {
            setState(() {
              widget.isValue = value;
            });
          },
        ),
        Text(
          widget.titulo,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
