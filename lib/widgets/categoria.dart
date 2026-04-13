import 'package:flutter/material.dart';

class CategoriasPage extends StatelessWidget {
  const CategoriasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categorias = [
      "Limpeza",
      "Quarto",
      "Cozinha",
      "Lavanderia",
      "Manutenção",
    ];

    return Scaffold(
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
                    "Categorias",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),

                  OutlinedButton.icon(
                    onPressed: () {
                      Navigator.pop(context); // 👈 volta
                    },
                    icon: const Icon(Icons.arrow_back),
                    label: const Text("Voltar"),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text("Nova Categoria"),
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: ListView.builder(
                    itemCount: categorias.length,
                    itemBuilder: (context, index) {
                      final categoria = categorias[index];

                      return Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.label,
                                  color: Colors.deepPurple,
                                ),
                                const SizedBox(width: 10),
                                Text(categoria),
                              ],
                            ),

                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {},
                                ),

                                IconButton(
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
