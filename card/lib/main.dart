import 'package:flutter/material.dart';  // Importa el paquete material de Flutter
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;  // Importa una característica específica para depuración

void main() {
  debugPaintSizeEnabled = false;  // Desactiva el modo de depuración para pintar los bordes de los widgets
  runApp(const MyApp());  // Inicia la aplicación llamando a MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Constructor de MyApp con una clave opcional

  static const showCard = true;  // Define una constante para alternar entre la visualización de una tarjeta y un stack

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',  // Título de la aplicación
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),  // Título de la barra de la aplicación
        ),
        body: Center(
          child: showCard ? _buildCard() : _buildStack(),  // Muestra una tarjeta o un stack dependiendo del valor de showCard
        ),
      ),
    );
  }

  // Método que construye y devuelve un widget de tipo Card
  Widget _buildCard() {
    return SizedBox(
      height: 210,  // Establece la altura de la tarjeta
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                '1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('My City, CA 99984'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            const Divider(),  // Línea divisoria
            ListTile(
              title: const Text(
                '(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: const Text('costa@example.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // Método que construye y devuelve un widget de tipo Stack
  Widget _buildStack() {
    return Stack(
      alignment: const Alignment(0.6, 0.6),  // Alinea los elementos en el stack
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/pic.jpg'),  // Imagen de fondo del avatar circular
          radius: 100,  // Radio del avatar circular
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.black45,  // Fondo semitransparente para el texto
          ),
          child: const Text(
            'Mia B',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,  // Color del texto
            ),
          ),
        ),
      ],
    );
  }
}
