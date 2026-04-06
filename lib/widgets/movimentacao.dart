import 'package:flutter/material.dart';

class MovimentacaoPage extends StatefulWidget {
  const MovimentacaoPage({super.key});

  @override
  State<MovimentacaoPage> createState() => _MovimentacaoPageState();
}

class _MovimentacaoPageState extends State<MovimentacaoPage> {
  String tipo = "Entrada";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),

        body: Center(
          child: Container(
            width: 900,
            padding: const EdgeInsets.all(30),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Movimentação de Estoque",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    OutlinedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      label: const Text("Voltar"),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Column(
                    children: [

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Produto",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 8),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Digite o nome do produto",
                          prefixIcon: const Icon(Icons.inventory),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                   
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tipo de movimentação",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 8),

                      DropdownButtonFormField<String>(
                      
                        items: ["Entrada", "Saída"]
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            tipo = value!;
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.swap_horiz),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Quantidade",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 8),

                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Ex: 10",
                          prefixIcon: const Icon(Icons.numbers),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                   
                      Row(
                        children: [
                      Expanded(
                        child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.check),
                        label: const Text("Confirmar"),
                              ),
                          ),

                          const SizedBox(width: 15),

                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.close),
                              label: const Text("Cancelar"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}