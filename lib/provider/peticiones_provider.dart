import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:taller1/provider/push_notifications_provider.dart';

class PeticionesProvider {
  final _url = "https://juansuarezz-servidorflask.zeet.app/xxx";

  nuevodispositivo() async {
    final pr = PushNoticationProvider();

    return http.post(
      Uri.parse(_url),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'token': pr.gettoken,
      }),
    );
  }
}
