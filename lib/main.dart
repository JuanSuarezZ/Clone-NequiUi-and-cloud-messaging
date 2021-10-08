import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taller1/provider/bottomnavigator_provider.dart';
import 'package:taller1/provider/peticiones_provider.dart';
import 'package:taller1/provider/push_notifications_provider.dart';
import 'package:taller1/utilities/rutas.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PushNoticationProvider.initNotificationsService();
  PeticionesProvider().nuevodispositivo();
  runApp(MyApp());
}

//juan xiaomi token
//dnohnG2wQWmBfR3SHvn1XT:APA91bFiKvReQz2gNvZg8wwKWBKDNdMo4ikxHnrIONJA7s18PHGHngU-hqh92a7uv8gsRUN8ajlgF42PTH-9MkhUL6aC6nNaGOqwUgypbJOeGP4MWFpqot40QEjb0cbJSnnvuEdEILcw
//danni token
//dahQBNqsSpirnB8zBoWTZd:APA91bHAcaSE3doYmXjl80lyraBLxcmf72kdOS2ODMRafKNREkAU_cv9XVju_pwU8k5aC5KiZ1wtgJz-oeEPfksEV5hRAF60yB50IUINAjbw115r_Vs8-eZkCLvNeLggokpC4kigUdAc

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new UiProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: rutasGenerales(),
      ),
    );
  }
}
