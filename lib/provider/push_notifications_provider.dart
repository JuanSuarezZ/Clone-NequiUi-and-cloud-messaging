import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNoticationProvider {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  static String _token = "none";

  String get gettoken => _token;

  static Future _backgroundHandler(RemoteMessage message) async {
    print('OnMessageBackground handler ${message.messageId}');
  }

  static Future _onMessageHandler(RemoteMessage message) async {
    print('OnMessageBackground handler ${message.messageId}');
  }

  static Future _onMessageOpenApp(RemoteMessage message) async {
    print('OnMessageBackground handler ${message.messageId}');
  }

  static Future initNotificationsService() async {
    await Firebase.initializeApp();
    await FirebaseMessaging.instance.subscribeToTopic("allDevices");
    _token = (await FirebaseMessaging.instance.getToken())!;
    print('Token:  $_token');

    // los handlers
    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);
  }
}
