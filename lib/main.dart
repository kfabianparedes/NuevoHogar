import 'package:flutter/material.dart';
import 'package:nuevo_hogar/src/pages/anuncios_albergues.dart';
import 'package:nuevo_hogar/src/pages/anuncios_veterinarias.dart';
import 'package:nuevo_hogar/src/pages/home.dart';
import 'package:nuevo_hogar/src/pages/login.dart';
import 'package:nuevo_hogar/src/pages/perfil.dart';
import 'package:nuevo_hogar/src/pages/recuperar_cuenta.dart';
import 'package:nuevo_hogar/src/pages/registro_anuncio.dart';
import 'package:nuevo_hogar/src/pages/registro_usuario.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final _color_icono = Color(0xFFEC8D51); //Naranja


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: const Color(0xFFEC8D51)
      ),
      title: 'Nuevo Hogar App',
      initialRoute: Login.routeName,
      routes: {
        Login.routeName: (BuildContext context) => Login(), //anuncios-albergue
        RegistroUsuario.routeName: (BuildContext context) => RegistroUsuario(), //anuncios-albergue
        RecuperarCuenta.routeName: (BuildContext context) => RecuperarCuenta(), //anuncios-albergue
        Home.routeName: (BuildContext context) =>  Home(), //home
        AnunciosAlbergues.routeName: (BuildContext context) => AnunciosAlbergues(), //anuncios-albergue
        AnunciosVeterinarias.routeName: (BuildContext context) => AnunciosVeterinarias(), //anuncios-albergue
        RegistroAnuncio.routeName: (BuildContext context) => RegistroAnuncio(), //anuncios-albergue
        Perfil.routeName: (BuildContext context) => Perfil(), //anuncios-albergue
      },
    );
  }
}