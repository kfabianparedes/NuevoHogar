// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nuevo_hogar/src/widgets/menu_widget.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  static const String routeName = 'home';
  
  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Color(0XFFEC8D51),
      ),
      drawer: MenuWidget(),
      body: Center(child: Text('HOME PAGE'),)
    );
  }

  // List<Widget> _itemsWidgetsCorta(){
  //   return opciones.map(
  //     (opcion){
  //       return Column(
  //         children: <Widget>[
  //           ListTile(
  //             title: Text(opcion + '!'),
  //           ),
  //           const Divider()
  //         ],
  //       );
  //     }
  //   ).toList();
  // } 


}