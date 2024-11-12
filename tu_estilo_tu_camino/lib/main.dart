import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tu_estilo_tu_camino/view/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tu Estilo Tu Camino',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginView(),
    );
  }
}
