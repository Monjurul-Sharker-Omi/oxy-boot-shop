import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final IconData icon;
  const MenuItems(this.title, this.icon);
}

List<MenuItems> menuitems = [
  MenuItems("Profile", Icons.person_2_rounded),
  MenuItems("Home Page", Icons.home_rounded),
  MenuItems("My Cart", Icons.shopping_bag_rounded),
  MenuItems("Favourite", Icons.favorite),
  MenuItems("Orders", Icons.content_paste_go_rounded)
];
