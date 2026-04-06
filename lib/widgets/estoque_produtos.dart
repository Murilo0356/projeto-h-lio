import 'package:estoque_hotel/widgets/cadastro_produto.dart';
import 'package:estoque_hotel/widgets/movimentacao.dart';
import 'package:flutter/material.dart';


class EstoquePage extends StatelessWidget {
  const EstoquePage({super.key});

  @override
  Widget build(BuildContext context) {
    final produtos = [
      {"nome": "Shampoo", "qtd": 120},
      {"nome": "Toalha", "qtd": 8}, // estoque baixo
      {"nome": "Sabonete", "qtd": 200},
      {"nome": "Lençol", "qtd": 15},
      {"nome": "Cobertor", "qtd": 5}, // estoque baixo
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),

        body: Center(
          child: Container(
            width: 1100,
            padding: const EdgeInsets.all(30),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Controle de Estoque",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CadastroProdutoPage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.add),
                      label: const Text("Novo Produto"),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Buscar produto...",
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

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
                              Expanded(child: Text("Produto", style: TextStyle(fontWeight: FontWeight.bold))),
                              Expanded(child: Text("Quantidade", style: TextStyle(fontWeight: FontWeight.bold))),
                              SizedBox(width: 100, child: Text("Ações", style: TextStyle(fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),

                
                        Expanded(
                          child: ListView.builder(
                            itemCount: produtos.length,
                            itemBuilder: (context, index) {
                              final produto = produtos[index];
                              final qtd = produto["qtd"] as int;
                              final baixo = qtd < 10;

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
                                      child: Text(produto["nome"].toString()),
                                    ),

                                   
                                    Expanded(
                                      child: Text(
                                        "$qtd",
                                        style: TextStyle(
                                          color: baixo ? Colors.red : Colors.black,
                                          fontWeight: baixo ? FontWeight.bold : FontWeight.normal,
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      width: 100,
                                      child: Row(
                                        children: [

                                          IconButton(
                                            icon: const Icon(Icons.edit, color: Colors.blue),
                                            onPressed: () {
                                              // editar (futuro)
                                            },
                                          ),

                                          IconButton(
                                            icon: const Icon(Icons.delete, color: Colors.red),
                                            onPressed: () {
                                              // deletar (futuro)
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
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

                const SizedBox(height: 15),

        
                Align(
                  alignment: Alignment.centerRight,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MovimentacaoPage(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.swap_horiz),
                    label: const Text("Movimentar estoque"),
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