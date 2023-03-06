import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:oxy_boot_shop/details_screen.dart';
import 'package:oxy_boot_shop/menuScreen.dart';
import 'package:oxy_boot_shop/models/product_model.dart';
import 'package:oxy_boot_shop/widgets/dynamic_size.dart';
import 'package:oxy_boot_shop/widgets/text_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

final ZoomDrawerController z = ZoomDrawerController();

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ZoomDrawerController z = ZoomDrawerController();
  //Homepage(this.z);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: Color.fromARGB(255, 92, 176, 224),
          backgroundColor: Color.fromRGBO(245, 255, 255, 1),
          index: 2,
          items: [
            Image.asset("home.png"),
            Image.asset("like.png"),
            Image.asset("frame.png"),
            Image.asset("notification.png"),
            Image.asset("user.png")
          ],
        ),
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 20,
                  icon: Image.asset("nav_icon.png"),
                  onPressed: () {
                    z.toggle!();
                    // if (ZoomDrawer.of(context)!.isOpen()) {
                    //   ZoomDrawer.of(context)!.close();
                    // } else {
                    //   ZoomDrawer.of(context)!.open();
                    // }
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child:
                          text(context, "Store Location", 10, Colors.black87),
                    ),
                    Row(
                      children: [
                        Image.asset("location.png"),
                        text(context, "Mondulibag, Sylhet", 12, Colors.black)
                      ],
                    )
                  ],
                ),
                IconButton(onPressed: () {}, icon: Image.asset("cart.png"))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromRGBO(245, 255, 255, 1),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Looking For Shoes",
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
            //edit here
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              height: 50,
              color: Colors.grey[100],
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  customChips(context, "nike.png", "Nike"),
                  customChips1(context, "puma.png"),
                  customChips1(context, "adidas.png"),
                  customChips1(context, "armor.png"),
                  customChips1(context, "converse.png")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame304npP (1:206)
                    // margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            // popularshoeswBV (1:207)
                            margin: EdgeInsets.fromLTRB(0, 0, 202, 0),
                            child: text(
                                context, "Popular Shoes", 16, Colors.black,
                                bold: true)),
                        text(context, "See all", 13,
                            const Color.fromARGB(255, 92, 176, 224))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                height: 270,
                //color: Colors.amber,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productInfo.length,
                    itemBuilder: (context, index) {
                      return productCard(
                          context,
                          productInfo[index].name,
                          productInfo[index].image,
                          productInfo[index].description,
                          productInfo[index].price);
                    })),
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            // popularshoeswBV (1:207)
                            margin: EdgeInsets.fromLTRB(0, 0, 202, 0),
                            child: text(
                                context, "New Arrivals", 16, Colors.black,
                                bold: true)),
                        text(context, "See all", 13,
                            const Color.fromARGB(255, 92, 176, 224))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Container(
                  height: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: text(context, "BEST CHOICE", 15,
                                  const Color.fromARGB(255, 92, 176, 224)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: text(context, "Nike Air Jordan", 21,
                                  const Color.fromARGB(255, 0, 0, 0),
                                  bold: true),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: text(
                                context,
                                "\$849.69",
                                21,
                                const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/nike_air_max.png",
                        height: 130,
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

Widget productCard(context, name, String image, description, price) {
  return InkWell(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => details(name, image, description, price)));
    },
    child: Container(
      margin:
          const EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
      width: 177,
      height: AppSizes.dynamicHeight(context, 0.30),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(245, 255, 255, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: text(context, "BEST SELLER", 13,
                    const Color.fromARGB(255, 92, 176, 224)),
              ),
            ],
          ),
          Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: text(
                    context, name, 19, const Color.fromARGB(255, 0, 0, 0),
                    bold: true),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: text(
                        context, price, 19, const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 92, 176, 224),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ))),
            ],
          )
        ],
      ),
    ),
  );
}

Widget customChips(context, imagename, name) {
  return Container(
    height: 5,
    width: 100,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 92, 176, 224),
      borderRadius: BorderRadius.circular(40),
    ),
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 50,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              //color: Colors.black,
              image: DecorationImage(
                image: AssetImage(imagename),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        text(context, name, 16, Colors.white)
      ],
    ),
  );
}

Widget customChips1(context, imagename) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15, top: 5, bottom: 5),
    child: Container(
      height: 50,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        //color: Colors.black,
        image: DecorationImage(
          image: AssetImage(imagename),
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
