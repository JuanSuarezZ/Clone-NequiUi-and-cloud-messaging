import 'package:flutter/material.dart';
import 'package:taller1/provider/peticiones_provider.dart';
import 'package:taller1/provider/push_notifications_provider.dart';

class NotificacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = new PeticionesProvider();
    final pr = PushNoticationProvider();
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () => provider.nuevodispositivo(),
            child: Text("enviar")),
        Text("Notificaciones page"),
        Text("Mi token ${pr.gettoken}"),
      ]),
    );
  }
}
