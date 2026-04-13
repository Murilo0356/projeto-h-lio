import 'package:estoque_hotel/widgets/estoque_produtos.dart';
import 'package:flutter/material.dart';

class ConfirmarExclusaoPage extends StatelessWidget {
  const ConfirmarExclusaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      body: Center(
        child: Container(
          width: 500,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.warning, color: Colors.red, size: 50),

              const SizedBox(height: 15),

              const Text(
                "Deseja excluir este produto?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              const Text(
                "Essa ação não poderá ser desfeita.",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 30),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
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
                      icon: const Icon(Icons.delete),
                      label: const Text("Excluir"),
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Navigator.pop(context); // 👈 volta
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
      ),
    );
  }
}
