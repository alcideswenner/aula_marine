import 'package:aula_marine/services/NotificationService.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NotificationService().showNoti();
          NotificationService().onSelectNotification("payload");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
