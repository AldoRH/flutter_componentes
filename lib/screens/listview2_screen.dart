import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  const Listview2Screen({Key? key}) : super(key: key);

  final opcions = const ['Goku','Veggeta','Gohan','Broly'];
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      appBar: AppBar(
        title: Text('Listview tipo 2'),
  

      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(opcions[index]),
            trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
            onTap: () {
              
            },
        ), 
        separatorBuilder: (_, __) => Divider(), 
        itemCount: opcions.length,
        )
    );
  }
}