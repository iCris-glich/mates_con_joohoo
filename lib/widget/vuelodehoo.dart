import 'package:flutter/material.dart';

class VueloDeHoo extends StatefulWidget {
  final VoidCallback onPressed;

  const VueloDeHoo({Key? key, required this.onPressed}) : super(key: key);

  @override
  _VueloDeHooState createState() => _VueloDeHooState();
}

class _VueloDeHooState extends State<VueloDeHoo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _mostrarImagen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _mostrarMensaje() {
    setState(() {
      _mostrarImagen = true;
    });
    _controller.forward();
    Future.delayed(Duration(seconds: 2), () {
      _controller.reverse().then((_) {
        setState(() {
          _mostrarImagen = false;
        });
        widget
            .onPressed(); // Llama a la función proporcionada cuando se oculta la imagen
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _mostrarMensaje,
            child: Text('Comenzar prueba'),
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return IgnorePointer(
                ignoring: !_mostrarImagen,
                child: Opacity(
                  opacity: _animation.value,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/vuelo.png'),
                        SizedBox(height: 10),
                        Text('¡Vamos a ello!'),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
