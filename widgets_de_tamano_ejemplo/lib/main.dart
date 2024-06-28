import 'package:flutter/material.dart';  // Importa el paquete de Material Design de Flutter
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;  // Importa una utilidad para depurar el tamaño de los widgets

void main() {
  debugPaintSizeEnabled = true;  // Activa la depuración de tamaños de widgets para ver los bordes y dimensiones de los widgets
  runApp(const MyApp());  // Función principal que inicia la aplicación llamando a MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Constructor de MyApp con una clave opcional

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',  // Establece el título de la aplicación
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),  // Título en la barra de aplicaciones
        ),
        body: Center(child: buildExpandedImages()),  // Cuerpo de la aplicación que llama al método buildExpandedImages
      ),
    );
  }

  // Método que crea una fila con imágenes que pueden desbordarse
  Widget buildOverflowingRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // Distribuye los elementos uniformemente en la fila
        children: [
          Image.asset('images/pic1.jpg'),  // Primera imagen
          Image.asset('images/pic2.jpg'),  // Segunda imagen
          Image.asset('images/pic3.jpg'),  // Tercera imagen
        ],
      );

  // Método que crea una fila con imágenes expandidas para ocupar el espacio disponible
  Widget buildExpandedImages() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,  // Alinea los elementos en el centro verticalmente
        children: [
          Expanded(
            child: Image.asset('images/pic1.jpg'),  // Primera imagen expandida para ocupar el espacio disponible
          ),
          Expanded(
            child: Image.asset('images/pic2.jpg'),  // Segunda imagen expandida para ocupar el espacio disponible
          ),
          Expanded(
            child: Image.asset('images/pic3.jpg'),  // Tercera imagen expandida para ocupar el espacio disponible
          ),
        ],
      );

  // Método que crea una fila con imágenes expandidas con diferente factor de flexión
  Widget buildExpandedImagesWithFlex() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,  // Alinea los elementos en el centro verticalmente
        children: [
          Expanded(
            child: Image.asset('images/pic1.jpg'),  // Primera imagen expandida para ocupar el espacio disponible
          ),
          Expanded(
            flex: 2,  // Segunda imagen expandida con un factor de flexión de 2 para ocupar el doble de espacio que los otros
            child: Image.asset('images/pic2.jpg'),  
          ),
          Expanded(
            child: Image.asset('images/pic3.jpg'),  // Tercera imagen expandida para ocupar el espacio disponible
          ),
        ],
      );
}
