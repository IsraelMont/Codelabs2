import 'package:flutter/material.dart';  // Importa el paquete de Material Design de Flutter
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;  // Importa una característica específica para depuración

void main() {
  debugPaintSizeEnabled = false;  // Desactiva el modo de depuración para pintar los bordes de los widgets
  runApp(const MyApp());  // Inicia la aplicación llamando a MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Constructor de MyApp con una clave opcional

  static const showGrid = true;  // Define una constante para alternar entre la visualización de una cuadrícula y una lista

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',  // Título de la aplicación
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),  // Título de la barra de la aplicación
        ),
        body: Center(
          child: showGrid ? _buildGrid() : _buildList(),  // Muestra una cuadrícula o una lista dependiendo del valor de showGrid
        ),
      ),
    );
  }

  // Método que construye y devuelve un widget GridView
  Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: 150,  // Máxima extensión del eje cruzado (ancho) para cada elemento
        padding: const EdgeInsets.all(4),  // Padding de 4 píxeles alrededor de la cuadrícula
        mainAxisSpacing: 4,  // Espaciado principal entre elementos de la cuadrícula
        crossAxisSpacing: 4,  // Espaciado cruzado entre elementos de la cuadrícula
        children: _buildGridTileList(30),  // Llama al método _buildGridTileList para obtener los elementos de la cuadrícula
      );

  // Método que construye y devuelve una lista de contenedores con imágenes
  List<Container> _buildGridTileList(int count) => List.generate(
        count, (i) => Container(child: Image.asset('images/pic$i.jpg')),  // Genera una lista de contenedores con imágenes desde los assets
      );

  // Método que construye y devuelve un widget ListView
  Widget _buildList() {
    return ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),  // Llama al método _tile para crear un ListTile con los datos especificados
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way', Icons.theaters),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        const Divider(),  // Añade una línea divisoria
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),  // Llama al método _tile para crear un ListTile con los datos especificados
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );
  }

  // Método que construye y devuelve un widget ListTile
  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,  // Define el peso de la fuente del título como semi-negrita
            fontSize: 20,  // Define el tamaño de la fuente del título
          )),
      subtitle: Text(subtitle),  // Subtítulo del ListTile
      leading: Icon(
        icon,
        color: Colors.blue[500],  // Color del icono
      ),
    );
  }
}
