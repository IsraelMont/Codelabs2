import 'package:flutter/material.dart';  // Importa el paquete de Material Design de Flutter

void main() => runApp(const MyApp());  // Función principal que inicia la aplicación llamando a MyApp

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Constructor de MyApp con una clave opcional

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';  // Define una constante para el título de la aplicación
    return MaterialApp(
      title: appTitle,  // Establece el título de la aplicación
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),  // Establece el título de la barra de aplicaciones usando la constante appTitle
        ),
        body: const Center(
          child: Text('Hello World'),  // Texto centrado en el cuerpo de la aplicación
        ),
      ),
    );
  }
}
