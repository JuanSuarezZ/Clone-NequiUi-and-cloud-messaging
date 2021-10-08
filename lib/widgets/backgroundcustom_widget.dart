import 'dart:math';
import 'package:flutter/material.dart';
import 'package:taller1/utilities/Colores.dart';

class CustomBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
            child: Container(
          height: 250,
        )),
        Positioned(
          top: -40,
          right: -50,
          child: Custombox(
            angulo: 1.6,
            color: Colores.colorRosado,
          ),
        ),
        Positioned(
          top: -40,
          right: -60,
          child: Custombox(
            angulo: 1.2,
            color: Colores.colorMorado,
          ),
        ),
        Positioned(
          child: _crearContenido(),
        ),
      ],
    );
  }
}

Widget _crearContenido() {
  return Container(
      height: 250,
      margin: EdgeInsets.only(right: 10, top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Disponible",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Text(
            "\$25.705,91",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Total",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Text(
            "\$25.705,91",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ));
}

class Custombox extends StatelessWidget {
  //variables
  final Color? color;
  final double angulo;

  //constructor de la clase
  const Custombox({required this.color, required this.angulo});

  @override
  Widget build(BuildContext context) {
    //media query
    //final size = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: -pi / this.angulo,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        width: 250,
        height: 230, //alto
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: color),
      ),
    );
  }
}
