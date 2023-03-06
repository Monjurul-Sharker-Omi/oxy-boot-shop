import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:oxy_boot_shop/intro.dart';
import 'package:oxy_boot_shop/menuScreen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      menuScreen: const Homepage(),
      mainScreen: const MyWidget(),
      showShadow: true,
      style: DrawerStyle.style1,
      angle: 0.0,
      isRtl: true,
      menuBackgroundColor: Color.fromARGB(1, 45, 59, 72),
    );
  }
}
