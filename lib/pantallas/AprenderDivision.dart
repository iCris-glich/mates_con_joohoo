import 'package:flutter/material.dart';
import 'package:appdemateparaninos/widget/drawer.dart';
import 'package:appdemateparaninos/widget/menucustom.dart';
import 'package:appdemateparaninos/pantallas/ejercicios/PantallaDivision.dart';

class ClasesDivision extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconoMenu(
        titulo: '',
      ),
      drawer: MiDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(35),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFfbb619),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Title(
                    color: Color(0xFFB99DFC),
                    child: const Text(
                      '¿Cómo dividir?',
                      style: TextStyle(
                        fontFamily: 'Anton',
                        color: Color.fromARGB(255, 101, 69, 174),
                      ),
                    )),
                const SizedBox(height: 20),
                Text(
                  '¿Cómo se divide?',
                  style: TextStyle(fontSize: 24, color: Colors.red),
                ),
                const SizedBox(height: 10),
                Image.asset('assets/Images/PartesDivision.jpg'),
                const SizedBox(height: 10),
                Text(
                  'Para aprender a dividir, puedes usar objetos. Por ejemplo, si tienes 12 manzanas y quieres compartirlas entre 3 amigos, cada amigo recibirá 4 manzanas.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  'Partes de la División:',
                  style: TextStyle(fontSize: 24, color: Colors.red),
                ),
                const SizedBox(height: 10),
                Image.asset('assets/Images/PartDivision2.jpg'),
                const SizedBox(height: 10),
                Text(
                  'Dividendo: Es la cantidad que quieres compartir, como tus dulces.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  'Divisor: Es cuántos grupos quieres hacer, como amigos.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  'Cociente: Es cuántos hay en cada grupo cuando divides.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  'Residuo o Resto: Es lo que sobra cuando no se puede dividir en grupos iguales.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Image.network(
                    'https://media.tenor.com/C2CZm1vGeQMAAAAj/pom-pom-honkai-star-rail.gif'),
                const SizedBox(height: 20),
                Tooltip(
                  message: 'Iniciar prueba',
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Division()),
                      );
                    },
                    child: const Text('Prueba'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
