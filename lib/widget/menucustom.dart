import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appdemateparaninos/widget/estadoDeDatos.dart';

class IconoMenu extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;

  const IconoMenu({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nombreUsuario = Provider.of<EstadoDeDatos>(context).nombreDeUsuario;
    final esNino = Provider.of<EstadoDeDatos>(context).esNino;

    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            nombreUsuario,
            style: const TextStyle(
              fontFamily: 'Anton',
              fontSize: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            esNino
                ? 'assets/images/avatar-niño.png'
                : 'assets/images/avatar-niña.png',
            height: 50,
            width: 50,
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/mascota-math-hoo.png',
            width: 50,
            height: 50,
          ),
        ],
      ),
      centerTitle: true,
      leading: IconButton(
        tooltip: 'Menú',
        icon: Image.asset(
          'assets/images/bolsa-para-la-escuela.png',
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
