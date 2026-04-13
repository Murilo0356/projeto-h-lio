import 'package:estoque_hotel/widgets/editar_produto.dart';
import 'package:flutter/material.dart';

class ProdutoDetalhePage extends StatelessWidget {
  const ProdutoDetalhePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      body: Center(
        child: Container(
          width: 900,
          padding: const EdgeInsets.all(30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Detalhes do Produto",
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
                    const ListTile(
                      leading: Icon(Icons.inventory),
                      title: Text("Nome"),
                      subtitle: Text("Shampoo"),
                    ),

                    const ListTile(
                      leading: Icon(Icons.numbers),
                      title: Text("Quantidade"),
                      subtitle: Text("120"),
                    ),

                    const ListTile(
                      leading: Icon(Icons.category),
                      title: Text("Categoria"),
                      subtitle: Text("Limpeza"),
                    ),

                    const SizedBox(height: 30),

                    // BOTÕES
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 18),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const EditarProdutoPage(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.edit),
                            label: const Text("Editar"),
                          ),
                        ),

                        const SizedBox(width: 15),

                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {
                              Navigator.pop(context); // 👈 voltar
                            },
                            icon: const Icon(Icons.arrow_back),
                            label: const Text("Voltar"),
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
    );
  }
}
