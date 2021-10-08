import 'package:flutter/material.dart';
import 'package:taller1/provider/push_notifications_provider.dart';

class TestPage extends StatelessWidget {
  final pushProvider = new PushNoticationProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Listo")));
  }
}
