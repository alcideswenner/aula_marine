import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final NotificationService _notificationService =
      NotificationService._instanciaUnica();

  factory NotificationService() {
    return _notificationService;
  }
  NotificationService._instanciaUnica();
  final FlutterLocalNotificationsPlugin flutterPluglin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    //gerenciar as configuracoes das plataformas

    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
            requestSoundPermission: false,
            requestAlertPermission: false,
            requestBadgePermission: false);

    final InitializationSettings initSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    flutterPluglin.initialize(initSettings,
        onSelectNotification: await onSelectNotification(""));
  }

  AndroidNotificationDetails _detalhesAndroid = AndroidNotificationDetails(
      'channel ID', 'channel name',
      playSound: true,
      priority: Priority.high,
      importance: Importance.high); //atributo

  Future<void> showNoti() async {
    await flutterPluglin.show(0, "Teste", "Deu certo!",
        NotificationDetails(android: _detalhesAndroid));
  }

  Future onSelectNotification(String payload) async {
    print(payload);
  }
}
