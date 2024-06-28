import 'package:flutter/material.dart';  // Importa el paquete de Material Design de Flutter
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;  // Importa una utilidad para depurar el tamaño de los widgets

void main() {
  debugPaintSizeEnabled = false;  // Desactiva la depuración de tamaños de widgets
  runApp(const MyApp());  // Función principal que inicia la aplicación llamando a MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Constructor de MyApp con una clave opcional

  static const showCard = true;  // Constante que define si se muestra una tarjeta o un stack

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',  // Establece el título de la aplicación
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),  // Título de la barra de aplicaciones
        ),
        body: Center(child: showCard ? _buildCard() : _buildStack()),  // Muestra una tarjeta o un stack basado en showCard
      ),
    );
  }

  // Construye una tarjeta
  Widget _buildCard() {
    return SizedBox(
      height: 210,  // Altura de la tarjeta
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                '1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500),  // Texto con negrita
              ),
              subtitle: const Text('My City, CA 99984'),  // Subtítulo
              leading: Icon(
                Icons.restaurant_menu,  // Icono principal
                color: Colors.blue[500],
              ),
            ),
            const Divider(),  // Divisor
            ListTile(
              title: const Text(
                '(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500),  // Texto con negrita
              ),
              leading: Icon(
                Icons.contact_phone,  // Icono de teléfono
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: const Text('costa@example.com'),
              leading: Icon(
                Icons.contact_mail,  // Icono de correo
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // Construye un stack
  Widget _buildStack() {
    return Stack(
      alignment: const Alignment(0.6, 0.6),  // Alineación del contenido del stack
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/pic.jpg'),  // Imagen de fondo
          radius: 100,  // Radio del avatar
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.black45,  // Fondo semi-transparente
          ),
          child: const Text(
            'Mia B',
            style: TextStyle(
              fontSize: 20,  // Tamaño de la fuente
              fontWeight: FontWeight.bold,  // Negrita
              color: Colors.white,  // Color del texto
            ),
          ),
        ),
      ],
    );
  }
}
