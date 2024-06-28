import 'package:flutter/material.dart';  // Importa el paquete de Material Design de Flutter

void main() => runApp(const MyApp());  // Función principal que inicia la aplicación llamando a MyApp

// #docregion my-app
class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Constructor de MyApp con una clave opcional

  @override
  Widget build(BuildContext context) {
    return Container(  // Devuelve un widget Container
      decoration: const BoxDecoration(color: Colors.white),  // Establece el color de fondo del Container a blanco
      child: const Center(  // Centra su hijo en el medio del Container
        child: Text(  // Widget de texto que muestra 'Hello World'
          'Hello World',  // El texto a mostrar
          textDirection: TextDirection.ltr,  // Establece la dirección del texto de izquierda a derecha
          style: TextStyle(  // Define el estilo del texto
            fontSize: 32,  // Tamaño de la fuente del texto
            color: Colors.black87,  // Color del texto en negro con un 87% de opacidad
          ),
        ),
      ),
    );
  }
}
