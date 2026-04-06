import 'package:flutter/material.dart';

class RecuperarSenha extends StatelessWidget {
  const RecuperarSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recuperar senha',
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
                    "Recuperar senha",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 20),

                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Digite seu email",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Enviar"),
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