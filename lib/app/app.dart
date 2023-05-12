import 'package:cardapio/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final moeda = NumberFormat.currency(
  locale: "pt_BR",
  symbol: "R\$"
);

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu Cardápio",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),

      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
      },
    );
  }
}