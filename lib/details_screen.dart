import 'package:flutter/material.dart';
import 'package:oxy_boot_shop/widgets/text_widget.dart';
import 'package:imageview360/imageview360.dart';

class details extends StatefulWidget {
  final String name;
  final String image;
  final String description;
  final String price;
  const details(this.name, this.image, this.description, this.price,
      {super.key});

  @override
  State<details> createState() => _detailsState(
        this.name,
        this.image,
        this.description,
        this.price,
      );
}

class _detailsState extends State<details> {
  final String name;
  final String image;
  final String description;
  final String price;
  List<ImageProvider> imageList = <ImageProvider>[];
  bool autoRotate = false;
  int rotationCount = 22;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  bool imagePrecached = true;

  _detailsState(this.name, this.image, this.description, this.price);

  // get name => name;
  // get image => image;
  // get description => description;
  // get price => price;

  @override
  void initState() {
    super.initState();
    updateImageList(context);
  }

  void updateImageList(BuildContext context) {
    for (int i = 1; i <= 21; i++) {
      imageList.add(AssetImage('assets/s$i.png'));
    }
  }

  int _value = 38;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: 20,
                icon: Image.asset("back.png"),
                onPressed: () => Navigator.of(context).pop(),
              ),
              text(context, "Men's Shoes", 12, Colors.black, bold: true),
              IconButton(onPressed: () {}, icon: Image.asset("cart.png"))
            ],
          ),
          Container(
            height: size.height * 0.4,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 20),
                      child: Image.asset("assets/ring.png"),
                    )),
                ImageView360(
                  key: UniqueKey(),
                  imageList: imageList,
                  autoRotate: autoRotate,
                  rotationCount: rotationCount,
                  swipeSensitivity: swipeSensitivity,
                  allowSwipeToRotate: allowSwipeToRotate,
                  onImageIndexChanged: (currentImageIndex) {
                    print("currentImageIndex: $currentImageIndex");
                  },
                ),
              ],
            ),
          ),
          Container(
            height: size.height * 0.25,
            width: size.width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 8, bottom: 8),
                  child: text(context, "BEST SELLER", 15,
                      const Color.fromARGB(255, 92, 176, 224)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 8, bottom: 8),
                  child: text(
                      context, name, 21, const Color.fromARGB(255, 0, 0, 0),
                      bold: true),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 8, bottom: 8),
                  child: text(
                      context, price, 21, const Color.fromARGB(255, 0, 0, 0)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
                  child: text(context, description, 16, Colors.grey[600]),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: text(context, "Gallery", 19, Colors.black, bold: true),
              )
            ],
          ),
          Container(
            width: size.width,
            height: size.height * 0.07,
            //color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: size.height,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: size.height,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: size.height,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: size.height,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("nike_air_max.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: size.height,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: size.height,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("nike_jordan.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      // popularshoeswBV (1:207)
                      margin: EdgeInsets.fromLTRB(0, 0, 202, 0),
                      child:
                          text(context, "Size", 16, Colors.black, bold: true)),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: text(context, "EU", 13, Colors.grey[600],
                              bold: true),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: text(context, "US", 13, Colors.grey[600]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: text(context, "UK", 13, Colors.grey[600]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: size.width,
            height: size.height * 0.07,
            //color: Colors.amber,
            child: Slider(
                value: _value.toDouble(),
                min: 38.0,
                max: 43.0,
                divisions: 7,
                activeColor: Color.fromARGB(255, 92, 176, 224),
                inactiveColor: Colors.grey,
                label: _value.toString(),
                onChanged: (double newValue) {
                  setState(() {
                    _value = newValue.round();
                  });
                },
                semanticFormatterCallback: (double newValue) {
                  return '${newValue.round()} dollars';
                }),
          ),
          Expanded(
            child: Container(
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: size.height,
                      width: 90,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(context, "Price", 16, Colors.grey[600]),
                          text(context, price, 19, Colors.grey[600], bold: true)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 92, 176, 224),
                      ),
                      child: Center(
                          child:
                              text(context, "Add To Cart", 19, Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
