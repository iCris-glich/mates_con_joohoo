import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Importa el paquete para lanzar URLs

class MiDrawer extends StatelessWidget {
  MiDrawer({super.key});

  final List<Map<String, dynamic>> links = [
    {
      'url': 'https://www.facebook.com/kevinraul.benavente?mibextid=ZbWKwL',
    },
    {'url': 'https://www.facebook.com/share/thrjUecifB2KWjyD/?mibextid=qi2Omg'}
  ];

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No puedo abrir el enlace';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFFFFFAD0),
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text('Menú'),
          ),
          Tooltip(
            message: 'Iniciar sesión',
            child: ListTile(
              leading: Icon(Icons.door_back_door),
              title: Text('Inicio de sesión'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
            ),
          ),
          Tooltip(
            message: 'Pantalla de bienvenida',
            child: ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Bienvenida'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/bienvenida');
              },
            ),
          ),
          Tooltip(
            message: 'Cómo sumar',
            child: ListTile(
              leading: Icon(Icons.mode),
              title: Text('¿Cómo sumar?'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/suma');
              },
            ),
          ),
          Tooltip(
            message: 'Cómo restar',
            child: ListTile(
              leading: Icon(Icons.mode),
              title: Text('¿Cómo restar?'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/restar');
              },
            ),
          ),
          Tooltip(
            message: 'Cómo multiplicar',
            child: ListTile(
              leading: Icon(Icons.mode),
              title: Text('¿Cómo multiplicar?'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/multiplicacion');
              },
            ),
          ),
          Tooltip(
            message: 'Cómo dividir',
            child: ListTile(
              leading: Icon(Icons.mode),
              title: Text('¿Cómo dividir?'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/division');
              },
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Tooltip(
            message: 'Kevin',
            child: ListTile(
              leading: Icon(Icons.face),
              title: Text('Kevin'),
              onTap: () {
                _launchURL(links[0]['url']); // Abre el enlace a la red social
                Navigator.pop(
                    context); // Cierra el drawer después de abrir el enlace
              },
            ),
          ),
          Tooltip(
            message: 'Cristhian',
            child: ListTile(
              leading: Icon(Icons.face),
              title: Text('Cristhian'),
              onTap: () {
                _launchURL(links[1]['url']); // Abre el enlace a la red social
                Navigator.pop(
                    context); // Cierra el drawer después de abrir el enlace
              },
            ),
          ),
          Text('version 2.4')
        ],
      ),
    );
  }
}
