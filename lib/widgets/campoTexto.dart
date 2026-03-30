import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String rotulo;
  final bool ehSenha;
  final TextEditingController controlador;

  CampoTexto({
    required this.rotulo,
    required this.controlador,
    this.ehSenha = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controlador,
      obscureText: ehSenha,
      decoration: InputDecoration(
        labelText: rotulo,
        border: OutlineInputBorder(),
      ),
    );
  }
}