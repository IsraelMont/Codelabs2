import 'package:flutter/material.dart';  // Importa el paquete de Material Design de Flutter
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;  // Importa una utilidad para depurar el tamaño de los widgets

void main() {
  debugPaintSizeEnabled = false;  // Desactiva la depuración de tamaños de widgets
  runApp(const MyApp());  // Función principal que inicia la aplicación llamando a MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Constructor de MyApp con una clave opcional

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',  // Establece el título de la aplicación
      home: buildHomePage('Strawberry Pavlova Recipe'),  // Llama a la función buildHomePage con el título de la receta
    );
  }

  Widget buildHomePage(String title) {
    // Título de la receta
    const titleText = Padding(
      padding: EdgeInsets.all(20),  // Añade padding alrededor del texto
      child: Text(
        'Strawberry Pavlova',  // Texto del título
        style: TextStyle(
          fontWeight: FontWeight.w800,  // Negrita fuerte
          letterSpacing: 0.5,  // Espaciado entre letras
          fontSize: 30,  // Tamaño de la fuente
        ),
      ),
    );

    // Subtítulo que describe la receta
    const subTitle = Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
      'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
      'topped with fruit and whipped cream.',  // Descripción de la Pavlova
      textAlign: TextAlign.center,  // Centra el texto
      style: TextStyle(
        fontFamily: 'Georgia',  // Fuente Georgia
        fontSize: 25,  // Tamaño de la fuente
      ),
    );

    // Fila de iconos de estrellas para la calificación
    final stars = Row(
      mainAxisSize: MainAxisSize.min,  // La fila ocupa el espacio mínimo necesario
      children: [
        Icon(Icons.star, color: Colors.green[500]),  // Estrella verde
        Icon(Icons.star, color: Colors.green[500]),  // Estrella verde
        Icon(Icons.star, color: Colors.green[500]),  // Estrella verde
        const Icon(Icons.star, color: Colors.black),  // Estrella negra
        const Icon(Icons.star, color: Colors.black),  // Estrella negra
      ],
    );

    // Contenedor para las calificaciones y el número de reseñas
    final ratings = Container(
      padding: const EdgeInsets.all(20),  // Añade padding alrededor del contenedor
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // Distribuye los elementos uniformemente
        children: [
          stars,  // Añade la fila de estrellas
          const Text(
            '170 Reviews',  // Texto del número de reseñas
            style: TextStyle(
              color: Colors.black,  // Color del texto
              fontWeight: FontWeight.w800,  // Negrita fuerte
              fontFamily: 'Roboto',  // Fuente Roboto
              letterSpacing: 0.5,  // Espaciado entre letras
              fontSize: 20,  // Tamaño de la fuente
            ),
          ),
        ],
      ),
    );

    // Estilo de texto para las descripciones de los iconos
    const descTextStyle = TextStyle(
      color: Colors.black,  // Color del texto
      fontWeight: FontWeight.w800,  // Negrita fuerte
      fontFamily: 'Roboto',  // Fuente Roboto
      letterSpacing: 0.5,  // Espaciado entre letras
      fontSize: 18,  // Tamaño de la fuente
      height: 2,  // Altura de línea
    );

    // Lista de iconos con descripciones
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,  // Aplica el estilo de texto a todos los textos dentro de este widget
      child: Container(
        padding: const EdgeInsets.all(20),  // Añade padding alrededor del contenedor
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // Distribuye los elementos uniformemente
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),  // Icono de cocina
                const Text('PREP:'),  // Texto de preparación
                const Text('25 min'),  // Tiempo de preparación
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),  // Icono de temporizador
                const Text('COOK:'),  // Texto de cocción
                const Text('1 hr'),  // Tiempo de cocción
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),  // Icono de restaurante
                const Text('FEEDS:'),  // Texto de porciones
                const Text('4-6'),  // Número de porciones
              ],
            ),
          ],
        ),
      ),
    );

    // Columna izquierda que contiene el título, subtítulo, calificaciones y lista de iconos
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),  // Añade padding alrededor del contenedor
      child: Column(
        children: [
          titleText,  // Añade el título
          subTitle,  // Añade el subtítulo
          ratings,  // Añade las calificaciones
          iconList,  // Añade la lista de iconos
        ],
      ),
    );

    // Imagen principal de la receta
    final mainImage = Image.asset(
      'images/pavlova.jpg',  // Ruta de la imagen
      fit: BoxFit.cover,  // La imagen cubre todo el espacio disponible
    );

    // Devuelve un Scaffold que contiene la estructura de la página
    return Scaffold(
      appBar: AppBar(
        title: Text(title),  // Título de la barra de aplicaciones
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),  // Añade margen alrededor del contenedor
          height: 600,  // Altura del contenedor
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,  // Alinea los elementos al inicio en el eje vertical
              children: [
                SizedBox(
                  width: 440,  // Ancho de la columna izquierda
                  child: leftColumn,  // Añade la columna izquierda
                ),
                mainImage,  // Añade la imagen principal
              ],
            ),
          ),
        ),
      ),
    );
  }
}
