import 'package:flutter/material.dart';
import '../control/autenticacao.dart';
import '../widgets/campoTexto.dart';

class TelaCadastro extends StatefulWidget {
  final Autenticacao controlador;

  TelaCadastro({required this.controlador});

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final controladorEmail = TextEditingController();
  final controladorSenha = TextEditingController();
  final controladorConfirmarSenha = TextEditingController();

  @override
  void dispose() {
    controladorEmail.dispose();
    controladorSenha.dispose();
    controladorConfirmarSenha.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro")),
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
            SizedBox(height: 10),
            CampoTexto(
              rotulo: "Confirmar senha",
              controlador: controladorConfirmarSenha,
              ehSenha: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                bool sucesso = widget.controlador.cadastrar(
                  controladorEmail.text,
                  controladorSenha.text,
                  controladorConfirmarSenha.text,
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      sucesso
                          ? "Cadastro realizado"
                          : "Senhas não conferem",
                    ),
                  ),
                );

                if (sucesso) {
                  Navigator.pop(context);
                }
              },
              child: Text("Cadastrar"),
            ),
          ],
        ),
      ),
    );
  }
}