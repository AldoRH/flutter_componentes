
import 'package:flutter_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/screens/screens.dart';


class AppRoutes{

  static const initialRoute = 'home'; 

  static final menuOption = <MenuOption>[

    //MenuOption(route: 'home' , name: 'Home Screen', screen: const HomeScreen(),  icon: Icons.account_balance_wallet_rounded),
    MenuOption(route: 'listview1' , name: 'ListView tipo 1', screen: const Listview1Screen(),  icon: Icons.add_location),
    MenuOption(route: 'listview2' , name: 'ListView tipo 2', screen: const Listview2Screen(),  icon: Icons.album),
    MenuOption(route: 'alert' , name: 'Alertas - Alerts', screen: const AlertScreen(),  icon: Icons.battery_4_bar_sharp),
    MenuOption(route: 'card' , name: 'Tarjetas - Carts', screen: const CardScreen(),  icon: Icons.calendar_view_week_sharp),
    MenuOption(route: 'avatar' , name: 'Circle Avatar', screen: const AvatarScreen(),  icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated' , name: 'Animated Container', screen: const AnimatedScreen(),  icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs' , name: 'Text Inputs', screen: const InputsScreen(),  icon: Icons.input_sharp),
    MenuOption(route: 'slider' , name: 'Slider and Checks', screen: const SliderScreen(),  icon: Icons.slideshow_rounded),
    MenuOption(route: 'listviewbuilder' , name: 'InfiniteScroll & Pull to refresh', screen: const ListviewBuilderScreen(),  icon: Icons.build_rounded),
    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home':(context) => const HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route:(context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings){

     return MaterialPageRoute(builder: (context) => const AlertScreen(),);
  }
}