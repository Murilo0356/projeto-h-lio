import 'package:estoque_hotel/widgets/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool _senha = true;
  bool _confirmar = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 179, 132, 200),

        body: Center(
          child: Card(
            child: Form(
              child: Container(
                width: 900,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                child: Column(
                  children: [

                    const Text(
                      "Cadastro",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 20),

                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Nome de usuario",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 15),

                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 15),

                    TextField(
                      obscureText: _senha,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(_senha
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _senha = !_senha;
                            });
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    TextField(
                      obscureText: _confirmar,
                      decoration: InputDecoration(
                        labelText: "Confirmar senha",
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(_confirmar
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _confirmar = !_confirmar;
                            });
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const HomePage()),
                        );
                      },
                      child: const Text("Enviar"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}