import 'produto.dart';
class Estoque {
  List<Produto> produtos = [];

  void adicionarProduto(Produto produto) {
    produtos.add(produto);
  }

  void removerProduto(int index) {
    produtos.removeAt(index);
  }
}