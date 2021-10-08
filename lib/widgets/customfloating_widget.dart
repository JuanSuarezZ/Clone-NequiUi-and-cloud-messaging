import 'package:flutter/material.dart';
import 'package:taller1/utilities/Colores.dart';

class CustomFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 10,
      backgroundColor: Colores.colorRosado[500],
      child: Icon(Icons.attach_money_sharp),
      onPressed: (() {}),
    );
  }
}
