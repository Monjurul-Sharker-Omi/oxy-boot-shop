import 'package:flutter/material.dart';
import 'package:oxy_boot_shop/models/menu_Item.dart';
import 'package:oxy_boot_shop/widgets/text_widget.dart';

// class MenuItems {
//   static  MenuItems profile = MenuItems("Profile", Icons.person_2_rounded);
//   static  MenuItems homepage = MenuItems("Home Page", Icons.home_rounded);
//   static  MenuItems myCart = MenuItems("My Cart", Icons.shopping_bag_rounded);
//   static  MenuItems favourite = MenuItems("Favourite", Icons.favorite);
//   static  MenuItems orders = MenuItems("Orders", Icons.content_paste_go_rounded);
//   static  MenuItems notification =
//       MenuItems("Notifications", Icons.notifications);
//       List<MenuItems> menuitems=[]

//   // static const all = <MenuItems>[
//   //   profile,
//   //   homepage,
//   //   myCart,
//   //   favourite,
//   //   orders,
//   //   notification

//   // ];

//   MenuItems(String s, IconData icon);
//   // MenuItems(String s, IconData person_2_rounded);
// }

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1, 45, 59, 72),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            ListView.builder(
                itemCount: menuitems.length,
                itemBuilder: (context, index) {
                  return menucard(
                      context, menuitems[index].title, menuitems[index].icon);
                }),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}

Widget menucard(context, title, icon) {
  return Container(
    height: 20,
    width: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Icon(icon), text(context, title, 19, Colors.white)],
    ),
  );
}
