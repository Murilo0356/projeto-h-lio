import 'hotel.dart';
import 'produto.dart';

void main() {

  Hotel hotel = Hotel(nome: "Novo Hotel");

  Produto toalha = Produto(nome: "Toalha", quantidade: 50, preco: 25.0);
  Produto sabonete = Produto(nome: "Sabonete", quantidade: 100, preco: 3.5);
  Produto lencol = Produto(nome: "Lençol", quantidade: 30, preco: 60.0);

  hotel.adicionarProduto(toalha);
  hotel.adicionarProduto(sabonete);
  hotel.adicionarProduto(lencol);

  print("Produtos adicionados!");

  listarProdutos(hotel);

  print("Atualizando quantidade de Toalhas");
  hotel.listarProdutos()[0].atualizarQuantidade(20);

  print("Alterando status do Sabonete...");
  hotel.listarProdutos()[1].toggleStatus();

  print("Removendo Lençol...");
  hotel.removerProduto(2);

  print("ESTADO FINAL");
  listarProdutos(hotel);
}

void listarProdutos(Hotel hotel) {
  var produtos = hotel.listarProdutos();

  print("Hotel: ${hotel.nome}");
  print("--- Estoque ---");

  for (var p in produtos) {
    print(
      "Nome: ${p.nome} | Qtd: ${p.quantidade} | Preço: R\$ ${p.preco} | Status: ${p.disponivel ? "Disponível" : "Indisponível"}",
    );
  }
}