import 'package:flutter/material.dart';  // Importa el paquete de Material Design de Flutter
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;  // Importa una característica específica para depuración

void main() {
  debugPaintSizeEnabled = true;  // Activa el modo de depuración para pintar los bordes de los widgets
  runApp(const MyApp());  // Inicia la aplicación llamando a MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Constructor de MyApp con una clave opcional

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',  // Título de la aplicación
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),  // Título de la barra de la aplicación
        ),
        body: Center(
          child: buildRow(),  // Llama al método buildRow para construir el cuerpo de la aplicación
        ),
      ),
    );
  }

  // Método que construye y devuelve una fila de imágenes
  Widget buildRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // Alinea los hijos de manera uniforme a lo largo del eje principal
        children: [
          Image.asset('images/pic1.jpg'),  // Imagen cargada desde los assets con nombre 'pic1.jpg'
          Image.asset('images/pic2.jpg'),  // Imagen cargada desde los assets con nombre 'pic2.jpg'
          Image.asset('images/pic3.jpg'),  // Imagen cargada desde los assets con nombre 'pic3.jpg'
        ],
      );

  // Método que construye y devuelve una columna de imágenes
  Widget buildColumn() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // Alinea los hijos de manera uniforme a lo largo del eje principal
        children: [
          Image.asset('images/pic1.jpg'),  // Imagen cargada desde los assets con nombre 'pic1.jpg'
          Image.asset('images/pic2.jpg'),  // Imagen cargada desde los assets con nombre 'pic2.jpg'
          Image.asset('images/pic3.jpg'),  // Imagen cargada desde los assets con nombre 'pic3.jpg'
        ],
      );
}
