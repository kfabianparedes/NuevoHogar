import 'package:flutter/material.dart';

class RecuperarCuenta extends StatelessWidget {
  RecuperarCuenta({Key? key}) : super(key: key);
  static const String routeName = 'recuperar-cuenta';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar cuenta'),
        backgroundColor: Color(0XFFEC8D51),
      ),
      body: const Center(
        child: Text('RECUPERAR CUENTA PAGE'),
      ),
    );
  }

}