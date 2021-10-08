import 'package:flutter/material.dart';
import 'package:taller1/utilities/Colores.dart';

class UiProvider extends ChangeNotifier {
  //variables iniciales
  int _selectedMenuOpt = 2;
  Color _color = Colores.colorRosado;

  //funcion que crea las notificaciones
  List<BottomNavigationBarItem> getbotones() {
    final buttonSize = 28.0;

    return [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.grid_view,
          size: buttonSize,
        ),
        label: "Armario",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.text_snippet_rounded,
          size: buttonSize,
        ),
        label: "Historial",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home_filled,
          size: buttonSize,
        ),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
          size: buttonSize,
        ),
        label: "Notificaciones",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.account_circle_sharp,
          size: buttonSize,
        ),
        label: "Cuenta",
      ),
    ];
  }

  int get selectedMenuOpt {
    return this._selectedMenuOpt;
  }

  //seteo de la pagina seleccionada
  set selectedMenuOpt(int i) {
    this._selectedMenuOpt = i;
    if (i == 2) {
      this._color = Colores.colorRosado;
    }
    if (i != 2) {
      this._color = Colors.lightBlue;
    }
    notifyListeners();
  }

  Color get color {
    return this._color;
  }

  set setcolor(Color c) {
    this._color = c;
    notifyListeners();
  }
}
