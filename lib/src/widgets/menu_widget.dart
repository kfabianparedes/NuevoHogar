import 'package:flutter/material.dart';
import 'package:nuevo_hogar/src/pages/anuncios_albergues.dart';
import 'package:nuevo_hogar/src/pages/anuncios_veterinarias.dart';
import 'package:nuevo_hogar/src/pages/home.dart';
import 'package:nuevo_hogar/src/pages/login.dart';
import 'package:nuevo_hogar/src/pages/perfil.dart';

class MenuWidget extends StatelessWidget {
  MenuWidget({Key? key}) : super(key: key);

  final _color_fuente = const TextStyle(color: Color(0xFF65555E)); //Color fuente
  final _color_circulo = const Color(0xFFFFFFFF); //Color fuente
  final _estiloTexto = const TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color: Color(0xFF65555E)); //Fuente
  final _color_icono = const Color(0xFFEC8D51); //Naranja
  final _color_fondo = const Color(0xFFF8EFED); //Beige claro
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
            color: _color_fondo,
            child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Container(),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.JPG'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: _color_icono),
                title:  Text('INICIO',style: _estiloTexto),
                onTap: () => Navigator.pushReplacementNamed(context, Home.routeName),
              ),
              ListTile(
                leading: Icon(Icons.chat_rounded, color: _color_icono),
                title: Text('ANUNCIOS ALBERGUES',style:_estiloTexto,),
                onTap: () => Navigator.pushReplacementNamed(context, AnunciosAlbergues.routeName),
              ),
              ListTile(
                leading: Icon(Icons.chat_rounded, color: _color_icono),
                title: Text('ANUNCIOS VETERINARIAS',style:_estiloTexto,),
                onTap: () => Navigator.pushReplacementNamed(context, AnunciosVeterinarias.routeName),

              ),
              ListTile(
                leading: Icon(Icons.person, color: _color_icono),
                title: Text('PERFIL',style:_estiloTexto,),
                onTap: () => Navigator.pushReplacementNamed(context, Perfil.routeName),
              ),
              ListTile(
                leading: Icon(Icons.logout, color: _color_icono),
                title: Text('CERRAR SESION',style:_estiloTexto,),
                onTap: () => Navigator.pushReplacementNamed(context, Login.routeName),
              ),
            ],
          ),
      ),
    );
  }
}