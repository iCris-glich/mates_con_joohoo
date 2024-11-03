import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appdemateparaninos/pantallas/inicio.dart';
import 'package:appdemateparaninos/pantallas/bienvenida.dart';
import 'package:appdemateparaninos/widget/estadoDeDatos.dart';
import 'package:appdemateparaninos/pantallas/informacionsuma.dart';
import 'package:appdemateparaninos/pantallas/AprenderDivision.dart';
import 'package:appdemateparaninos/pantallas/informacionmulti.dart';
import 'package:appdemateparaninos/pantallas/ense%C3%B1arRestas.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => EstadoDeDatos(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Búho matematico',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Color(0xFFe00986), // Fondo Principal
        scaffoldBackgroundColor: Color(0xFFBCE3FF), // Fondo Principal
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFFFFAD0), // Barra de Navegación
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 24,
            fontFamily: 'Anton',
            color: Color(0xFFB99DFC), // Texto Destacado
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            fontSize: 24,
            fontFamily: 'Anton',
            color: Color(0xFF333333), // Texto Principal
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            color: Colors.blueGrey,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFFFFB6C1), // Botones
            textStyle: TextStyle(fontSize: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white, // Entradas de Texto
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.lightBlueAccent),
          ),
          labelStyle: TextStyle(color: Color(0xFF66b8c4)),
        ),
      ),
      home: PantallaInicio(),
      initialRoute: '/',
      routes: {
        '/bienvenida': (context) => PantallaBienvenida(),
        '/suma': (context) => ClasesDeSuma(),
        '/multiplicacion': (context) => ClasesDeMultiplicar(),
        '/restar': (context) => ClaseResta(),
        '/division': (context) => ClasesDivision(),
      },
    );
  }
}
