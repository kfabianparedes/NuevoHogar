import 'package:flutter/material.dart';
import 'package:nuevo_hogar/src/pages/home.dart';
import 'package:nuevo_hogar/src/pages/registro_anuncio.dart';

class AnunciosAlbergues extends StatefulWidget {
  AnunciosAlbergues({Key? key}) : super(key: key);
  static const String routeName = 'anuncios-albergue';

 


  @override
  _AnunciosAlberguesState createState() => _AnunciosAlberguesState();
}

class _AnunciosAlberguesState extends State<AnunciosAlbergues> {

  final _color_fuente = const TextStyle(color: Color(0xFF65555E)); //Color fuente
  final _color_circulo = const Color(0xFFFFFFFF); //Color fuente
  final _estiloTexto = const TextStyle(fontSize: 15.0,fontWeight: FontWeight.w100,color: Color(0xFF65555E)); //Fuente
  final _estiloTextoNegrita = const TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Color(0xFF65555E)); //Fuente
  final _estilobotones = const TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Color(0xFFFFFFFF)); //Fuente
  final _estilobtnFooterLogin = const TextStyle(fontSize: 15.0,fontWeight: FontWeight.w100,color: Color(0xFFEC8D51)); //Fuente
  final _estiloBtnInicio = const TextStyle(fontSize: 20.0,fontWeight: FontWeight.w100,color: Color(0xFFFFFFFF)); //Fuente
  final _color_icono = const Color(0xFFEC8D51); //Naranja
  final _color_fondo = const Color(0xFFF8EFED); //Beige claro
  final _color_barra = const Color(0xFFEC8D51); //Naranja
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ANUNCIOS DE ALERGUES'),
        backgroundColor: _color_barra,
      ),
      body: _listarAnunciosAlbergues(),
    );
  }

  Widget _listarAnunciosAlbergues(){
    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: <Widget>[
        _crearAnuncio(context),
        const SizedBox(height: 10.0),
        _anunciosAlbergue(context),
        const SizedBox(height: 20.0),
        _anunciosAlbergue(context),
        const SizedBox(height: 20.0),
        _anunciosAlbergue(context),
        const SizedBox(height: 20.0),
        _anunciosAlbergue(context),
        const SizedBox(height: 20.0),
        _anunciosAlbergue(context),
        const SizedBox(height: 20.0),
        _anunciosAlbergue(context),
        const SizedBox(height: 20.0),
      ], 
    );
  }
  
  Widget _anunciosAlbergue(context){
    final card = Column(
      children: <Widget>[
        const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://catedraanimalesysociedad.org/wp-content/uploads/2021/05/jpg.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),
        ListTile(
          leading: Icon(Icons.person_outline_outlined, color: _color_icono),
          title: Text('Anunciante:',style:_estiloTextoNegrita),
          subtitle: Text('Julie Gable.',style:_estiloTexto),
        ),
        ListTile(
          leading: Icon(Icons.pets, color: _color_icono),
          title: Text('Mascota:',style:_estiloTextoNegrita),
          subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.',style:_estiloTexto),
        ),
        ListTile(
          leading: Icon(Icons.date_range_outlined, color: _color_icono),
          title: Text('Fecha de publicación:',style:_estiloTextoNegrita),
          subtitle: Text('29/10/2021',style:_estiloTexto),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: _color_icono),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: Text('VER MÁS',style: _estilobotones,)
              ),
              onPressed: () => Navigator.pushNamed(context, Home.routeName),
            ),
            const SizedBox(height: 80.0),
          ],
        ),
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

  Widget _crearAnuncio(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 65.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: _color_icono),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: Text('NUEVO ANUNCIO',style: _estilobotones,)
        ),
        onPressed: () => Navigator.pushReplacementNamed(context, RegistroAnuncio.routeName),
      )
    );
  }
}