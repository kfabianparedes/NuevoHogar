import 'package:flutter/material.dart';
import 'package:nuevo_hogar/src/pages/login.dart';
import 'package:nuevo_hogar/src/widgets/menu_widget.dart';
class RegistroAnuncio extends StatefulWidget {
  static const String routeName = 'registro-anuncio';
  RegistroAnuncio({Key? key}) : super(key: key);

  @override
  _RegistroAnuncioState createState() => _RegistroAnuncioState();
}

class _RegistroAnuncioState extends State<RegistroAnuncio> {

  String _opcionSeleccionada = 'Persona';
  final _color_fuente = const TextStyle(color: Color(0xFF65555E)); //Color fuente
  final _color_circulo = const Color(0xFFFFFFFF); //Color fuente
  final _estiloTexto = const TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Color(0xFF65555E)); //Fuente
  final _estilobtnFooterLogin = const TextStyle(fontSize: 15.0,fontWeight: FontWeight.w100,color: Color(0xFFEC8D51)); //Fuente
  final _estiloBtnInicio = const TextStyle(fontSize: 20.0,fontWeight: FontWeight.w100,color: Color(0xFFFFFFFF)); //Fuente
  final _color_icono = const Color(0xFFEC8D51); //Naranja
  final _color_fondo = const Color(0xFFF8EFED); //Beige claro
  final _color_barra = const Color(0xFFEC8D51); //Naranja

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NUEVO ANUNCIO'),
        backgroundColor: _color_barra,
      ),
      backgroundColor: _color_fondo,
      drawer: MenuWidget(),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            _crearFondo(context),
            _loginForm(context),
          ],
        )
      )
    );
  }


  Widget _crearFondo(BuildContext context){
    final size = MediaQuery.of(context).size;

    final fondo = Container(
      height: size.height * 0.2,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/logo.JPG'),
            fit: BoxFit.fitHeight
          )
      ),
    );

    final circulo = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: _color_circulo,
      ),
    );

    return Stack(
      children: <Widget>[
        fondo,
        Positioned(child: circulo,top: 225.0,left: -60.0),
        Positioned(child: circulo,top: 150.0,right: -80.0),
        Positioned(child: circulo,top: 225.0,left: -60.0),
      ],
    );
  }


  Widget _loginForm(BuildContext context){
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: 150.0,
            )
          ),

          Container(

            width: size.width * 0.85,
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  offset: Offset(0.0 , 5.0),
                  spreadRadius: 3.0
                )
              ]
            ),
            child: Column(
              children: <Widget>[
                Text('Registrar Anuncio',style:_estiloTexto),
                const SizedBox(height: 10.0),
                _crearEmail(),
                const SizedBox(height: 10.0),
                _crearPassword(),
                const SizedBox(height: 10.0),
                _crearNombres(),
                const SizedBox(height: 10.0),
                _crearTelefono(),
                const SizedBox(height: 10.0),
                _crearDireccion(),
                const SizedBox(height: 10.0),
                // _crearTipoUsuario(),
                // const SizedBox(height: 10.0),
                _crearBoton(),
              ],
            ),
          ),
        const SizedBox(height: 10.0),
        
        ],
      ),
    );
  }

  Widget _crearEmail(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.text_fields, color: _color_icono),
          hintText: 'ejemplo@correo.com',
          labelText: 'Descripci??n',
          focusColor: _color_circulo
        ),
      ),
    );
  }

  Widget _crearPassword(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.lock_outline,color: _color_icono),
          labelText: 'Anunciante',
        ),
      ),
    );
  }
  
  Widget _crearNombres(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.person,color: _color_icono),
          labelText: 'Nombre(s)',
        ),
      ),
    );
  }
  
  Widget _crearTelefono(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.local_phone_outlined,color: _color_icono),
          labelText: 'T??lefono',
        ),
      ),
    );
  }
  
  Widget _crearDireccion(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.fmd_good_outlined,color: _color_icono),
          labelText: 'Direcci??n',
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown(){
    List<String> usuarios = ['Persona','Veterinaria','Albergue'];
    List<DropdownMenuItem<String>> lista = [];
    usuarios.forEach((usuario){
      lista.add(
        DropdownMenuItem(
          child: Text(usuario),
          value: usuario
        )
      );
    });
    return lista;
  }
  
  Widget _crearTipoUsuario(){
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.people_outline_sharp,color: _color_icono),
          const SizedBox(width: 15.0),
          DropdownButton<String>(
            hint: const Text('Escoge Tipo de usuario'),
            value: _opcionSeleccionada,
            items: getOpcionesDropdown(),
            onChanged: (value) {
              setState(() {
                _opcionSeleccionada = value.toString();
              });
            },
            
          )
          
        ],
      )
    );
  }

  Widget _crearBoton(){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: _color_icono),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Text('Crear Anuncio',style: _estiloBtnInicio),
      ),
      onPressed: () {  }, 
    );
  }
  

}