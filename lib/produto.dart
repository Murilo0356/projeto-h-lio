class Produto {
  String nome;
  int quantidade;
  double preco;
  bool disponivel;

  Produto({
    required this.nome,
    required this.quantidade,
    required this.preco,
    this.disponivel = true,
  });

  void atualizarQuantidade(int qtd) {
    quantidade = qtd;
    disponivel = quantidade > 0;
  }

  void toggleStatus() {
    disponivel = !disponivel;
  }
}