import 'package:flutter/material.dart';
import 'package:nuevo_hogar/src/widgets/menu_widget.dart';

class AnunciosVeterinarias extends StatelessWidget {
  static const String routeName = 'anuncios-veterinaria';

  AnunciosVeterinarias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anuncios Veterinarias'),
        backgroundColor: Color(0XFFEC8D51),
      ),
      drawer: MenuWidget(),
      body: const Center(
        child: Text('ANUNCIOS VETERINARIAS PAGE'),
      ),
    );
  }

}