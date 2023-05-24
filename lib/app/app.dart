import 'package:flutter/material.dart';
import '../domain/contato.dart';
import '../presentation/contato_page.dart';
import '../presentation/home_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Agenda",
      theme: ThemeData(
        primarySwatch: Colors.pink,       
      ),

      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/contato":(context) {
          var contato = ModalRoute.of(context)!.settings.arguments as Contato;
          return ContatoPage(contato: contato);
        }
      },
    );
  }
  
}