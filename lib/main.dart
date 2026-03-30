import 'package:flutter/material.dart';
import 'control/autenticacao.dart';
import 'view/telaLogin.dart';

void main() {
  final autenticacao = Autenticacao();
  runApp(App(autenticacao));
}

class App extends StatelessWidget {
  final Autenticacao controlador;

  App(this.controlador);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaLogin(controlador: controlador),
    );
  }
}