// ignore: file_names
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nuevo_hogar/src/models/UsuarioModel.dart';

class UsuarioProvider {
  final String _url = 'http://localhost:9816/api/usuarios';
  Future<List<UsuarioModel>> cargarUsuario() async {
    final List<UsuarioModel> usu = [];
    final url = '$_url';
    final resp =
        await http.get(Uri.parse(url), headers: {"Accept": "application/json"});
    //await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    if (jsonDecode(resp.body) == null)
      return [];
    else {
      final d = jsonDecode(resp.body);
      for (Map i in d) {
        usu.add(UsuarioModel.fromJson(i));
        print(usu);
      }
    }
    return usu;
  }
}
