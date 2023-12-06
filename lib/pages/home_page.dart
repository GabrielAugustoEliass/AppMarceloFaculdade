// ignore_for_file: prefer_const_constructors

import 'package:app_marcelo_faculdade/widgets/bottom_style.dart';
import 'package:app_marcelo_faculdade/widgets/contador.dart';
import 'package:flutter/material.dart';
import '../widgets/check_box_titulo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textStylePadrao = TextStyle(fontSize: 20, color: Colors.grey);

  bool baconValue = false;
  bool queijoValue = false;
  bool orionValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('HamburgueriaZ'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Faça seu pedido!', style: textStylePadrao),
            TextFormField(
              decoration: InputDecoration(hintText: 'Nome'),
            ),
            CheckBoxTitulo(titulo: 'Bacon', isValue: baconValue),
            CheckBoxTitulo(titulo: 'Queijo', isValue: queijoValue),
            CheckBoxTitulo(titulo: 'Orion Rings', isValue: orionValue),
            Text('Quantidade', style: textStylePadrao),
            Padding(
              padding: const EdgeInsets.only(top: 6, bottom: 6),
              child: Contador(),
            ),
            Text('Resumo do pedido', style: textStylePadrao),
            SizedBox(height: 5),
            Text('R\$ 0', style: textStylePadrao),
            SizedBox(height: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
              ),
              onPressed: () {},
              child: Text('FAZER PEDIDO'),
            ),
          ],
        ),
      ),
    );
  }
}
