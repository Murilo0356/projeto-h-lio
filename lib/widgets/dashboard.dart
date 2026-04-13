import 'package:estoque_hotel/widgets/estoque_produtos.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  Widget _card(String titulo, String valor, IconData icon) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(icon, size: 40, color: Colors.deepPurple),
            const SizedBox(height: 10),
            Text(
              valor,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(titulo),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      body: Center(
        child: Container(
          width: 1000,
          padding: const EdgeInsets.all(30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Dashboard",
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

              Row(
                children: [
                  _card("Total de Produtos", "120", Icons.inventory),
                  const SizedBox(width: 15),
                  _card("Estoque Baixo", "5", Icons.warning),
                  const SizedBox(width: 15),
                  _card("Movimentações", "32", Icons.swap_horiz),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                "Ações rápidas",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

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
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const EstoquePage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.inventory),
                      label: const Text("Ir para Estoque"),
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
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
      ),
    );
  }
}
