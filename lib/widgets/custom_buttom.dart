import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taller1/provider/bottomnavigator_provider.dart';
import 'package:taller1/utilities/Colores.dart';

class CustomNavigationBarForAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int i) => uiProvider.selectedMenuOpt = i, // se selecciono i
        currentIndex: currentIndex, //posicion actual
        elevation: 10, //elevacion, es decir la sombra
        type: BottomNavigationBarType.fixed, //mas de 3 elementos, los alinea
        backgroundColor: Colores.colorGris,
        selectedItemColor: uiProvider.color,
        unselectedItemColor: Colores.colorGris[40],
        mouseCursor: null,
        //fixedColor: Color(0xffFA25B3),
        items: uiProvider.getbotones());
  }
}
