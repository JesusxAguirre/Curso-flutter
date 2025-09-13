import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicator',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars',
    subtitle: 'Mensajes desde el botom bar',
    link: '/snackbar',
    icon: Icons.notification_important_outlined,
  ),
  MenuItem(
    title: 'Animated container',
    subtitle: 'deprecated animtaed',
    link: '/animated',
    icon: Icons.animation,
  ),
  MenuItem(
    title: 'Ui controls + Tiles',
    subtitle: 'Una serie de controles de interfaz',
    link: '/ui-controls',
    icon: Icons.car_rental_rounded,
  ),

  MenuItem(
    title: 'On boarding tutorial',
    subtitle: 'Small tutorial to show how to use the app',
    link: '/tutorial',
    icon: Icons.auto_awesome_rounded,
  ),
];
