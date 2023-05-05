
import 'package:cardapio/data/ingredientes.dart';
import 'package:flutter/material.dart';


/*class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cardápio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Conheça nossos Lanches"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/ingredientespages");
              },
              child: const Text("X-Salada"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/ingredientespages");
              },
              child: const Text("X-Bacon"),
            ),
          ],
        ),
      ),
    );
  }
}*/

class HomePage extends StatefulWidget {
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
}

