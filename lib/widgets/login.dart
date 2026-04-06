import 'package:estoque_hotel/widgets/estoque_produtos.dart';
import 'package:estoque_hotel/widgets/recuperar_senha.dart';
import 'package:flutter/material.dart';
import 'cadastro.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 179, 132, 200),

        body: Center(
          child: Card(
            child: Container(
              width: 900,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),

              child: Column(
                children: [

                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 20),

                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 15),

                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const EstoquePage()),
                      );
                    },
                    child: const Text("Entrar"),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const RecuperarSenha()),
                      );
                    },
                    child: const Text("Esqueceu a senha?"),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const Cadastro()),
                      );
                    },
                    child: const Text("Criar conta"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}