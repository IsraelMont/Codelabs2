import 'package:flutter/material.dart';  // Importa el paquete de Material Design de Flutter
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;  // Importa una característica específica para depuración

void main() {
  debugPaintSizeEnabled = false;  // Desactiva el modo de depuración para pintar los bordes de los widgets
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
          child: _buildImageColumn(),  // Llama al método _buildImageColumn para construir el cuerpo de la aplicación
        ),
      ),
    );
  }

  // Método que construye y devuelve un contenedor con una columna de imágenes
  Widget _buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black26,  // Fondo con color negro semi-transparente
      ),
      child: Column(
        children: [
          _buildImageRow(1),  // Llama al método _buildImageRow para construir una fila de imágenes comenzando desde el índice 1
          _buildImageRow(3),  // Llama al método _buildImageRow para construir una fila de imágenes comenzando desde el índice 3
        ],
      ),
    );
  }

  // Método que construye y devuelve un contenedor decorado con una imagen
  Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),  // Borde de 10 píxeles de ancho con color negro semi-transparente
            borderRadius: const BorderRadius.all(Radius.circular(8)),  // Bordes redondeados de 8 píxeles de radio
          ),
          margin: const EdgeInsets.all(4),  // Margen de 4 píxeles alrededor del contenedor
          child: Image.asset('images/pic$imageIndex.jpg'),  // Imagen cargada desde los assets con el índice especificado
        ),
      );

  // Método que construye y devuelve una fila de imágenes decoradas
  Widget _buildImageRow(int imageIndex) => Row(
        children: [
          _buildDecoratedImage(imageIndex),  // Llama al método _buildDecoratedImage para la primera imagen en la fila
          _buildDecoratedImage(imageIndex + 1),  // Llama al método _buildDecoratedImage para la segunda imagen en la fila con el índice incrementado
        ],
      );
}
