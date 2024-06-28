import 'package:flutter/material.dart';  // Importa el paquete de Material Design de Flutter

void main() => runApp(const MyApp());  // Función principal que inicia la aplicación llamando a MyApp

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Constructor de MyApp con una clave opcional

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',  // Título de la aplicación
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),  // Título de la barra de la aplicación
        ),
        body: const Center(
          child: Text('Hello World'),  // Texto centrado en el cuerpo de la aplicación
        ),
      ),
    );
  }
}
