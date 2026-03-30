import 'package:flutter/material.dart';
import '../control/autenticacao.dart';
import 'telaCadastro.dart';
import 'altSenha.dart';
import '../widgets/campoTexto.dart';

class TelaLogin extends StatefulWidget {
  final Autenticacao controlador;

  TelaLogin({required this.controlador});

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final controladorEmail = TextEditingController();
  final controladorSenha = TextEditingController();

  @override
  void dispose() {
    controladorEmail.dispose();
    controladorSenha.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CampoTexto(
              rotulo: "Email",
              controlador: controladorEmail,
            ),
            SizedBox(height: 10),
            CampoTexto(
              rotulo: "Senha",
              controlador: controladorSenha,
              ehSenha: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                bool sucesso = widget.controlador.login(
                  controladorEmail.text,
                  controladorSenha.text,
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      sucesso ? "Login OK" : "Erro no login",
                    ),
                  ),
                );
              },
              child: Text("Entrar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TelaCadastro(
                      controlador: widget.controlador,
                    ),
                  ),
                );
              },
              child: Text("Cadastrar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TelaAlterarSenha(
                      controlador: widget.controlador,
                    ),
                  ),
                );
              },
              child: Text("Mudar senha"),
            ),
          ],
        ),
      ),
    );
  }
}