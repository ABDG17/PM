import 'package:flutter/material.dart';

class Lanche {
  final String nome;
  final List<String> ingredientes;

//ISSO É O CONSTRUTOR DA CLASSE
  Lanche({required this.nome, required this.ingredientes});
}

List<Lanche> buildCardapio() {
  var cardapio = <Lanche>[];

  cardapio.add(Lanche(
    nome: "X-Salada",
    ingredientes: [
      "pão",
      "hamburguer",
      "tomate",
      "ovo",
      "presunto",
      "queijo",
    ],
  ));

  cardapio.add(Lanche(nome: "X-Bacon", ingredientes: [
    "pão",
    "hamburguer",
    "bacon"
    "tomate",
    "queijo",
    "alface",
  ]));

  return cardapio;
}