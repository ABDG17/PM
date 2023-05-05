import 'package:cardapio/app/app.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());




/*class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var cardapio = buildCardapio();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cardápio'),
      ),
      body: ListView.separated(
        //coloca linhas entre itens e é obrigado colocar tudo isso
        itemBuilder: (context, index) {
          final lanche = cardapio[index];

          return Padding(
            padding: const EdgeInsets.all(12),
            child: SizedBox(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      lanche.nome.toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: //MAP FAZ CONVERSÃO
                        lanche.ingredientes
                        .map((e) => Text("$e, "))
                        .toList(),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: cardapio.length,
      ),
    );
  }
}*/



