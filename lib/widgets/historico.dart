import 'package:flutter/material.dart';

class HistoricoPage extends StatelessWidget {
  const HistoricoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final movimentacoes = [
      {"produto": "Shampoo", "tipo": "Entrada", "qtd": 10},
      {"produto": "Toalha", "tipo": "Saída", "qtd": 5},
      {"produto": "Sabonete", "tipo": "Entrada", "qtd": 20},
      {"produto": "Cobertor", "tipo": "Saída", "qtd": 2},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      body: Center(
        child: Container(
          width: 1000,
          padding: const EdgeInsets.all(30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Histórico de Movimentações",
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

              // TABELA
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              child: Text(
                                "Produto",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Tipo",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Quantidade",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: ListView.builder(
                          itemCount: movimentacoes.length,
                          itemBuilder: (context, index) {
                            final item = movimentacoes[index];
                            final isSaida = item["tipo"] == "Saída";

                            return Container(
                              padding: const EdgeInsets.all(15),
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(item["produto"].toString()),
                                  ),

                                  Expanded(
                                    child: Text(
                                      item["tipo"].toString(),
                                      style: TextStyle(
                                        color: isSaida
                                            ? Colors.red
                                            : Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                  Expanded(child: Text("${item["qtd"]}")),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
