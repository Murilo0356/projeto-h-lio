import 'estoque.dart';
import 'produto.dart';

class Hotel {
  String nome;
  final Estoque estoque;

  Hotel({
    required this.nome,
    Estoque? estoque,
  }) : estoque = estoque ?? Estoque();

  void adicionarProduto(Produto produto) {
    estoque.adicionarProduto(produto);
  }

  void removerProduto(int index) {
    estoque.removerProduto(index);
  }

  List<Produto> listarProdutos() {
    return estoque.produtos;
  }
}