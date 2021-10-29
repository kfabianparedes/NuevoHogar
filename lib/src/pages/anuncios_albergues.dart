import 'package:flutter/material.dart';
import 'package:nuevo_hogar/src/widgets/menu_widget.dart';

class AnunciosAlbergues extends StatelessWidget {
  static const String routeName = 'anuncios-albergue';

  AnunciosAlbergues({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anuncios Albergues'),
        backgroundColor: Color(0XFFEC8D51),
      ),
      drawer: MenuWidget(),
      body: const Center(
        child: Text('ANUNCIOS ALBERGUES PAGE'),
      ),
    );
  }

}