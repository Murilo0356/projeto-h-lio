import 'package:flutter/material.dart';

class CadastroProdutoPage extends StatelessWidget {
  const CadastroProdutoPage({super.key});

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
                      "Cadastro de Produto",
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

                // CARD
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
                          "Nome do produto",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 8),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Ex: Shampoo",
                          prefixIcon: const Icon(Icons.inventory_2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // QUANTIDADE
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
                          hintText: "Ex: 50",
                          prefixIcon: const Icon(Icons.numbers),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                    
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Categoria",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 8),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Ex: Limpeza",
                          prefixIcon: const Icon(Icons.category),
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
                                foregroundColor: Colors.white, // 👈 texto branco
                                padding: const EdgeInsets.symmetric(vertical: 18),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.save),
                              label: const Text("Salvar"),
                            ),
                          ),

                          const SizedBox(width: 15),

                          Expanded(
                            child: OutlinedButton.icon(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.black87,
                                padding: const EdgeInsets.symmetric(vertical: 18),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.cancel),
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