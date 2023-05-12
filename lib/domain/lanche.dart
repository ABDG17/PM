//CLASSE DO LANCHE, POIS LANCHE É O ITEM QUE DOMINA MEU CARDÁPIO

class Lanche{
  final String nome;
  final double preco;
  final List<String> ingredientes;
  final String foto;


  //CONSTRUTOR PORQUE A FINAL PRECISA

  Lanche({
    required this.nome,
    required this.preco,
    required this.ingredientes,
    required this.foto
  
  });
}