import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name: 'Goku Ultra instinto',imageUrl: 'https://sm.ign.com/t/ign_latam/screenshot/default/goku-susanoo_7by3.1280.jpg',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://depor.com/resizer/EdB7048lVxuC_2VDAuUZ6HnQlnY=/1200x800/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/DLTCTLI6OVGINGEVV57Y5HJPXU.jpg',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://www.xtrafondos.com/wallpapers/goku-ultra-instinct-transformacion-dragon-ball-super-3439.jpg',),
          SizedBox(height: 100)
        ],
      ),
    );
  }
}

