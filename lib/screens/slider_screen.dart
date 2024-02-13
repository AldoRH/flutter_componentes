import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);


  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks')
        ) ,
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled 
            ?
            (value) {
              _sliderValue = value;
              setState(() {});
           }
           : null
           ),

           Checkbox(
            value: _sliderEnabled,
             onChanged: (value){
              _sliderEnabled = value ?? true;
              setState(() {});
             }
             ),

             Switch(
              value: _sliderEnabled, 
              onChanged: (value) => setState(() {_sliderEnabled = value;})
              ),

             CheckboxListTile.adaptive(
              title: const Text('Habilitar slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled, 
              onChanged: (value) => setState(() {_sliderEnabled = value ?? true;}),
              ),

            SwitchListTile.adaptive(
              title: const Text('Habilitar slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled, 
              onChanged: (value) => setState(() {_sliderEnabled = value;}),
                ),

            const AboutListTile(),
      
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                image: const NetworkImage('https://i.blogs.es/d250b6/cyberpunk-edgerunners/1366_2000.jpeg'),
                fit: BoxFit.contain,
                width: _sliderValue,
                ),
              ),
            ),

        ],
      ),
    );
  }
}