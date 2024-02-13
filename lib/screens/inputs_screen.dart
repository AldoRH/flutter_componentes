import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'fist_name':'Aldo',
      'last_name':'Romero',
      'email':'aldo@google.com',
      'password':'123456',
      'role':'Admin',
    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustominputField(labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'fist_name', formValues: formValues,),
                const  SizedBox(height: 30,),
          
                CustominputField(labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustominputField(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress,  formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustominputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true,  formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),

                DropdownButtonFormField(
                  items:const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin'),),
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser'),),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer'),),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer'),),
                  ], 
                  onChanged: (value) { 
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                   }, 
                  ),

                const SizedBox(height: 30,),

              
          
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()){
                      print('Formuario no valido');
                      return;
                    }
                    print(formValues);
                  }, 
                  child: const SizedBox (
                    width: double.infinity,
                    child: Center(child:  Text('Guardar',style: TextStyle(color: Colors.white),))
                    )
                  )
          
          
                
              ],
            ),
          ),
          ),
      )
    );
  }
}
