import 'package:flutter/material.dart';
import 'package:widget_app/data/models/models.dart';

import '../representation/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      route: 'listView1',
      name: 'List View 1 Screen',
      screen: const ListView1Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'listView2',
      name: 'List View 2 Screen',
      screen: const ListView2Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alert Screen',
      screen: const AlertScreen(),
      icon: Icons.notification_add,
    ),
    MenuOption(
      route: 'card',
      name: 'Card Screen',
      screen: const CardScreen(),
      icon: Icons.credit_card,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => HomeScreen(),
  //   'ListView1': (BuildContext context) => ListView1Screen(),
  //   'ListView2': (BuildContext context) => ListView2Screen(),
  //   'alert': (BuildContext context) => AlertScreen(),
  //   'card': (BuildContext context) => CardScreen(),
  // };

  static Route<dynamic> Function(RouteSettings)? onGenerateRoute = (settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  };
}
