import 'package:estoque_hotel/widgets/login.dart';
import 'package:flutter/material.dart';

import 'cadastro.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: const Color(0xFFB384C8),

        body: Center(
          child: Card(
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            child: Container(
              width: 900,
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 40,
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  // TÍTULO
                  const Text(
                    "Bem-vindo!",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Escolha uma opção para continuar",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 40),

                  // BOTÃO LOGIN (outline mais elegante)
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.deepPurple,
                        side: const BorderSide(color: Colors.deepPurple),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // BOTÃO CADASTRO (principal)
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const Cadastro(),
                          ),
                        );
                      },
                      child: const Text(
                        "Cadastro",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // VOLTAR
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Voltar",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
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