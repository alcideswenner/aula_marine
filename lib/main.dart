import 'package:aula_marine/pages/home.dart';
import 'package:aula_marine/services/NotificationService.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().init();
  runApp(MaterialApp(
    home: Home(),
    title: "Marina",
  ));
}
