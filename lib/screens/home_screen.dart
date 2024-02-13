import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions =  AppRoutes.menuOption;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(     
        itemCount: menuOptions.length,
        separatorBuilder: (_, __ ) =>
           const Divider(),
       
        itemBuilder: ( BuildContext context, int i) => ListTile(
            leading: Icon(menuOptions[i].icon, color: AppTheme.primary,),
            title: Text(menuOptions[i].name),
            onTap: () {
              
              // final route = MaterialPageRoute(builder:(context) => Listview2Screen());
              // Navigator.push(context, route);

              Navigator.pushNamed(context, menuOptions[i].route);


            },
          ),
      ),
    );
  }
}