import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taller1/pages/HistorialPage.dart';
import 'package:taller1/pages/Notificaciones_page.dart';
import 'package:taller1/provider/bottomnavigator_provider.dart';
import 'package:taller1/widgets/custom_buttom.dart';

import 'Armario_page.dart';
import 'Perfil_page.dart';
import 'home_page.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBarForAll(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    // Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return ArmarioPage();

      case 1:
        return HistorialPage();

      case 2:
        return HomePage();

      case 3:
        return NotificacionesPage();

      default:
        return PerfilPage();
    }
  }
}
