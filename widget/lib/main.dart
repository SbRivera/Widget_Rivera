import 'package:flutter/material.dart';
import 'vista/clima_vista.dart'; // Ajusta la ruta si es necesario.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicación del Clima',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClimaVista(),
    );
  }
}
