import 'package:flutter/material.dart';
import '../control/autenticacao.dart';
import '../widgets/campoTexto.dart';

class TelaAlterarSenha extends StatefulWidget {
  final Autenticacao controlador;

  TelaAlterarSenha({required this.controlador});

  @override
  _TelaAlterarSenhaState createState() => _TelaAlterarSenhaState();
}

class _TelaAlterarSenhaState extends State<TelaAlterarSenha> {
  final controladorNovaSenha = TextEditingController();
  final controladorConfirmarSenha = TextEditingController();

  @override
  void dispose() {
    controladorNovaSenha.dispose();
    controladorConfirmarSenha.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alterar Senha")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CampoTexto(
              rotulo: "Nova senha",
              controlador: controladorNovaSenha,
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
                bool sucesso = widget.controlador.alterarSenha(
                  controladorNovaSenha.text,
                  controladorConfirmarSenha.text,
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      sucesso
                          ? "Senha alterada"
                          : "Senhas não conferem",
                    ),
                  ),
                );
              },
              child: Text("Alterar"),
            ),
          ],
        ),
      ),
    );
  }
}