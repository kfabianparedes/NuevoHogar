// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nuevo_hogar/src/pages/anuncios_albergues.dart';
import 'package:nuevo_hogar/src/pages/anuncios_veterinarias.dart';
import 'package:nuevo_hogar/src/widgets/menu_widget.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  static const String routeName = 'home';
  

  final _color_fuente = const TextStyle(color: Color(0xFF65555E)); //Color fuente
  final _color_circulo = const Color(0xFFFFFFFF); //Color fuente
  final _estiloTexto = const TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Color(0xFF65555E)); //Fuente
  final _estiloTitulo = const TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Color(0xFF65555E)); //Fuente
  final _estilobotones = const TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Color(0xFFFFFFFF)); //Fuente
  final _estilobtnFooterLogin = const TextStyle(fontSize: 15.0,fontWeight: FontWeight.w100,color: Color(0xFFEC8D51)); //Fuente
  final _estiloBtnInicio = const TextStyle(fontSize: 20.0,fontWeight: FontWeight.w100,color: Color(0xFFFFFFFF)); //Fuente
  final _color_icono = const Color(0xFFEC8D51); //Naranja
  final _color_fondo = const Color(0xFFF8EFED); //Beige claro


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INICIO'),
        backgroundColor: Color(0XFFEC8D51),
      ),
      drawer: MenuWidget(),
      body: ListView(
        padding:  EdgeInsets.all(15.0),
        children: <Widget>[
          Center(
            child: Text('¡Bienvenido!',style:_estiloTitulo),
          ),
          const SizedBox(height: 15.0),
          _anunciosAlbergue(context),
          const SizedBox(height: 20.0),
          _anunciosVeterinaria(context)
        ],
      )
    );
  }
  
  Widget _anunciosAlbergue(context){
    final card = Column(
      children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://catedraanimalesysociedad.org/wp-content/uploads/2021/05/jpg.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),
        
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: _color_icono),

                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  child: Text('VER ANUNCIOS DE REFUGIOS',style: _estilobotones,)
                ),
                onPressed: () => Navigator.pushNamed(context, AnunciosAlbergues.routeName),
              ),
            ],
          ),
          
        )
      
      ],
      
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5.0,
            offset: Offset(0.0 , 5.0),
            spreadRadius: 3.0
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: card,
      ),
    );
  }

  Widget _anunciosVeterinaria(context){
    final card = Column(
      children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://cdn.www.gob.pe/uploads/document/file/286693/standard_MASCOTAS2.jpeg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: _color_icono),

                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                  child: Text('VER ANUNCIOS DE VETERINARIAS',style: _estilobotones,)
                ),
                onPressed: () => Navigator.pushNamed(context, AnunciosVeterinarias.routeName),
              ),
            ],
          ),
        )
      
      ],
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5.0,
            offset: Offset(0.0 , 5.0),
            spreadRadius: 3.0
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: card,
      ),
    );
  }


}