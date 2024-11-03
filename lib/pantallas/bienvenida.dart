import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:appdemateparaninos/widget/drawer.dart';
import 'package:appdemateparaninos/widget/menucustom.dart';
import 'package:appdemateparaninos/widget/mensajepara.dart';
import 'package:appdemateparaninos/pantallas/informacionsuma.dart';
import 'package:appdemateparaninos/pantallas/AprenderDivision.dart';
import 'package:appdemateparaninos/pantallas/informacionmulti.dart';
import 'package:appdemateparaninos/pantallas/ense%C3%B1arRestas.dart';


class OpcionMatematica {
  final String titulo;
  final String imagen;

  OpcionMatematica(this.titulo, this.imagen);
}

final List<OpcionMatematica> opcionesMatematicas = [
  OpcionMatematica(
      'Sumas', 'https://media1.tenor.com/m/Q3jqZGCUyMIAAAAd/blue-more.gif'),
  OpcionMatematica(
      'Restas', 'https://media1.tenor.com/m/-54_sm0VPRoAAAAd/blue-line.gif'),
  OpcionMatematica('Multiplicación',
      'https://media1.tenor.com/m/R3XYxM2g23EAAAAd/purple-mark.gif'),
  OpcionMatematica('División',
      'https://media1.tenor.com/m/hUlybc6coWIAAAAd/orange-symbol.gif'),
];

class PantallaBienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconoMenu(
        titulo: '',
      ),
      drawer: MiDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Title(
                color: Colors.red,
                child: const Text(
                  'Elige un tema',
                  style: TextStyle(
                    color: Color(0xFFB99DFC),
                    fontFamily: 'Anton', 
                    fontSize: 25,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 8 / 9.5,
                  ),
                  itemCount: opcionesMatematicas.length,
                  itemBuilder: (context, index) {
                    return MouseRegion(
                      cursor: SystemMouseCursors
                          .click, // Cambia la forma del cursor
                      child: Tooltip(
                        message:
                            'Click para aprender sobre ${opcionesMatematicas[index].titulo}', // Mensaje al pasar el cursor
                        child: GestureDetector(
                          onTap: () {
                            if (opcionesMatematicas[index].titulo == 'Sumas') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ClasesDeSuma(),
                                ),
                              );
                            } else if (opcionesMatematicas[index].titulo ==
                                'Restas') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ClaseResta(),
                                ),
                              );
                            } else if (opcionesMatematicas[index].titulo ==
                                'Multiplicación') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ClasesDeMultiplicar(),
                                ),
                              );
                            } else if (opcionesMatematicas[index].titulo ==
                                'División') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ClasesDivision(),
                                ),
                              );
                            }
                          },
                          child: GridTile(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 243, 239, 239),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(76, 167, 236, 1),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(0, 1),
                                  )
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network(
                                    opcionesMatematicas[index].imagen,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    opcionesMatematicas[index].titulo,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'BebasNeue-Regular'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 28,
              ),
              Tooltip(
                message: '¡Es una sorpresa!',
                child: ElevatedButton(
                  onPressed: () {
                    MensajeEmergente.ver(context);
                  },
                  child: const Text('¡PRESIONAME!'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
