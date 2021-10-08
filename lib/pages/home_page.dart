import 'dart:math';

import 'package:flutter/material.dart';
import 'package:taller1/utilities/Colores.dart';
import 'package:taller1/widgets/backgroundcustom_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                height: size.height,
                child: Content(),
              ),
              Column(
                children: [
                  CustomBackground(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NequiButton(path: 'assets/alcancia.png', texto: "Metas"),
              NequiButton(path: 'assets/colchon.png', texto: "Colchon"),
              NequiButton(path: 'assets/bolsillos.png', texto: "Bolsillos"),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "app en desarrollo!",
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}

class NequiButton extends StatelessWidget {
  final String texto;
  final String path;

  const NequiButton({required this.path, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xfffafafa)),
      child: InkWell(
          onTap: () {
            print("seleccion");
          }, // Handle your callback
          child: Column(
            children: [
              Container(child: Image.asset(path), height: 70),
              Text(
                texto,
                style: TextStyle(color: Colores.colorMorado),
              ),
            ],
          )),
    );
  }
}

List<Widget> crear() {
  List<Widget> list = [];
  for (int i = 0; i < 50; i++) {
    list.add(Container(
        height: 50,
        width: 50,
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)]));
  }
  return list;
}
