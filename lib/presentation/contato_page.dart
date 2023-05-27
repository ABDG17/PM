import 'package:atividade_agenda/domain/contato.dart';
import 'package:flutter/material.dart';


class ContatoPage extends StatelessWidget {

  final Contato contato;

  const ContatoPage({super.key, required this.contato});  
  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contato"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Image.network(contato.foto),
                 ),
              ),

              Container(
                margin: const EdgeInsets.only(top:10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    //Align(alignment: Alignment.centerLeft, child: Text(contato.nome, style: theme.textTheme.headline6,)), - ALINHAMENTO A ESQUERDA
                    Text(contato.nome, style: theme.textTheme.headline6,),
                    Text(contato.telefone, style: theme.textTheme.headline6,),
                    Text(contato.email, style: theme.textTheme.headline6,),
                    Text(contato.aniversario, style: theme.textTheme.headline6,),
                    
                  ],
                ),
              ),
          ],
        ),
         ),
    );
  }
}