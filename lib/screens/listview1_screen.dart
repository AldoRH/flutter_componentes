import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  const Listview1Screen({Key? key}) : super(key: key);

  final opcions = const ['Goku','Veggeta','Gohan','Broly'];
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Listview tipo 1'),
      ),
      body: ListView(
        children: [

          ...opcions.map(
            (personaje) => ListTile(
            leading: Icon(Icons.add_task),
            title: Text(personaje),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          )
            ).toList()
          
        ],
      )
    );
  }
}