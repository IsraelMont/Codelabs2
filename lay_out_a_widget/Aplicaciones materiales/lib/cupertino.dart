import 'package:flutter/cupertino.dart';  // Importa el paquete de Cupertino de Flutter para construir interfaces de usuario estilo iOS

void main() {
  runApp(const MyApp());  // Inicia la aplicación llamando a MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Constructor de MyApp con una clave opcional

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter layout demo',  // Título de la aplicación
      theme: CupertinoThemeData(
        brightness: Brightness.light,  // Define el brillo del tema (claro)
        primaryColor: CupertinoColors.systemBlue,  // Color primario del tema
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey,  // Color de fondo de la barra de navegación
          middle: Text('Flutter layout demo'),  // Título en el centro de la barra de navegación
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // Alinea los hijos en el centro del eje principal (vertical)
            children: <Widget>[
              Text('Hello World'),  // Texto que se muestra en la pantalla
            ],
          ),
        ),
      ),
    );
  }
}
