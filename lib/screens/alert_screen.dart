import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      context: context, 
      builder: (context){
        return  CupertinoAlertDialog(
           title:  const Text('Titulo'),
           content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed:() => Navigator.pop(context),
               child: const Text('Cancelar', style: TextStyle(color: Colors.red))
               ),
            TextButton(
              onPressed:() => Navigator.pop(context),
               child: const Text('Ok')
               )
          ],
        );
      }
      );

  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return  AlertDialog(
          shape:  RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10) ),
          elevation: 5,
          title: const Text('Titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed:() => Navigator.pop(context),
               child: const Text('Cancelar')
               ),
            TextButton(
              onPressed:() => Navigator.pop(context),
               child: const Text('Ok')
               )
          ],
        );
      }

      );

  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
         child: ElevatedButton(
          //onPressed: ()=> displayDialogAndroid(context),
          onPressed: ()=> Platform.isAndroid ? displayDialogAndroid(context): displayDialogIOS(context),
          child: const Padding(
            padding:  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child:  Text('Mostrar alerta', style: TextStyle(fontSize: 16, color: Colors.white),),
          ),
          )
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () => Navigator.pop(context),
        shape: const CircleBorder(),
        child:const Icon(Icons.close, color: Colors.white)),
    );
  }
}