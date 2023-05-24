import 'package:flutter/material.dart';

import '../data/contato_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final contato = loadContato();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agenda"),
      ),

      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),

        itemCount: contato.length,
        itemBuilder: ((context, index) => GestureDetector(
          onTap: (){
            Navigator.pushNamed(
              context,
              "/contato",
              arguments: contato[index],
              );
        },

        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(contato[index].nome),
            ],
          ),
          ),
        )),
      ),
    );

  }
}