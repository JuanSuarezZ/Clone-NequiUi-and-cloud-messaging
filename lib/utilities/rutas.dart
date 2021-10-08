import 'package:flutter/material.dart';
import 'package:taller1/pages/Armario_page.dart';
import 'package:taller1/pages/HistorialPage.dart';
import 'package:taller1/pages/HomeBody_page.dart';
import 'package:taller1/pages/Notificaciones_page.dart';
import 'package:taller1/pages/Perfil_page.dart';
import 'package:taller1/pages/Test_page.dart';

Map<String, WidgetBuilder> rutasGenerales() {
  return {
    '/': (context) => TestPage(),
    'home': (context) => HomePageBody(),
    'Armario': (context) => ArmarioPage(),
    'Historial': (context) => HistorialPage(),
    'Notificaciones': (context) => NotificacionesPage(),
    'Perfil': (context) => PerfilPage(),
  };
}
