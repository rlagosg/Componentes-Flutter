import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     nombre: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOption(
        route: 'listview1',
        nombre: 'ListView 1 Screen',
        screen: const Listview1Screen(),
        icon: Icons.yard_outlined),
    MenuOption(
        route: 'listview2',
        nombre: 'ListView 2 Screen',
        screen: const Listview2Screen(),
        icon: Icons.workspaces),
    MenuOption(
        route: 'alert',
        nombre: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        nombre: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.casino_rounded),
    MenuOption(
        route: 'avatar',
        nombre: 'Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_sharp),
    MenuOption(
        route: 'animated',
        nombre: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.play_arrow_outlined),
    MenuOption(
        route: 'inputs',
        nombre: 'Inputs Screen',
        screen: const InputsScreen(),
        icon: Icons.aod_outlined),
    MenuOption(
        route: 'Slider',
        nombre: 'Slider Screen',
        screen: const SliderScreen(),
        icon: Icons.aod_outlined),
    MenuOption(
        route: 'ListVew',
        nombre: 'ListView Screen',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    //agregamos manuelamente el homne
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    //agregramos en for las demas
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Listview1Screen(),
    );
  }
}
