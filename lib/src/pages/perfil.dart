import 'package:flutter/material.dart';
import 'package:nuevo_hogar/src/widgets/menu_widget.dart';

class Perfil extends StatelessWidget {
  static const String routeName = 'profile';
  final _color_fuente = const Color(0xFF65555E);
  final _estiloTexto = const TextStyle(fontSize: 25);
  final _color_icono = const Color(0xFFEC8D51);
  final _color_fondo = const Color(0xFFF8EFED);

  Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color_fondo,
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: _color_icono,
      ),
      drawer: MenuWidget(),
      body: const Center(
        child: Text('PERFIL PAGE'),
      ),
    );
  }

}