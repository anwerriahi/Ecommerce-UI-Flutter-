import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/methods.dart';
import 'package:flutter_application_1/controller/sizes.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetails extends StatefulWidget {
  final Map productItem;
  const ProductDetails({super.key, required this.productItem});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final String menuIcon =
      '''<svg xmlns="http://www.w3.org/2000/svg" data-name="Layer 261" viewBox="0 0 46.99 46.88" id="menu"><rect width="23.5" height="9.29" x="23.5" fill="#231f20" rx="4.64"></rect><rect width="9.41" height="9.29" x=".28" fill="#231f20" rx="4.64"></rect><rect width="9.41" height="9.29" x="37.52" y="37.59" fill="#231f20" rx="4.64"></rect><rect width="23.5" height="9.29" x=".47" y="37.59" fill="#231f20" rx="4.64"></rect><rect width="46.99" height="9.29" y="18.85" fill="#231f20" rx="4.64"></rect></svg>''';
  final List<int> sizes = [39, 40, 41, 42, 43];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const Drawer(),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            currentIndex: 0,
            selectedItemColor: Colors.black,
            iconSize: 35,
            selectedIconTheme: const IconThemeData(size: 40),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: '🟠',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shop_outlined), label: '🟠'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: '🟠'),
            ]),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 35,
              )),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: SvgPicture.string(
                    menuIcon,
                    height: 30,
                  ),
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                iconSize: 32.0, // Adjust the size of the icon
              ),
            ),
          ],
          toolbarHeight: 100,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Riahi's ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
              Text(
                "Market",
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
          child: Column(
            children: [
              Container(
                color: Colors.grey[300],
                child: Image.asset(
                  widget.productItem["pic"],
                  width: double.maxFinite,
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: Sizes.mb),
                child: Column(
                  children: [
                    Text(
                      widget.productItem["name"],
                      style: TextStyle(
                          fontSize: Sizes.titleSize,
                          fontWeight: Sizes.titleWeight),
                    ),
                    SizedBox(height: Sizes.mb / 4),
                    Text(
                      Methods.capitalizeEachWord(
                          "${widget.productItem["category"]}'s ${widget.productItem["type"]}"),
                      style: TextStyle(
                          fontSize: Sizes.titleSize / 1.2,
                          fontWeight: Sizes.titleWeight,
                          color: Colors.grey[500]),
                    ),
                    SizedBox(height: Sizes.mb),
                    Text(
                      "\$${widget.productItem["price"]}",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: Sizes.titleSize,
                          fontWeight: Sizes.titleWeight),
                    ),
                    SizedBox(height: Sizes.mb),
                    SizedBox(
                      width: 300,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Color:",
                                style: TextStyle(
                                    fontSize: Sizes.titleSize / 1.2,
                                    fontWeight: Sizes.f400),
                              ),
                              SizedBox(width: Sizes.space25),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.circle,
                                    size: 30,
                                    color: Colors.grey,
                                  )),
                              Text(
                                "Gray",
                                style: TextStyle(
                                    fontSize: Sizes.titleSize / 1.2,
                                    fontWeight: Sizes.f400),
                              ),
                              SizedBox(width: Sizes.space25),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.circle,
                                    size: 30,
                                    color: Colors.black,
                                  )),
                              Text(
                                "Black",
                                style: TextStyle(
                                    fontSize: Sizes.titleSize / 1.2,
                                    fontWeight: Sizes.f400),
                              ),
                            ],
                          ),
                          SizedBox(height: Sizes.mb20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Size:",
                                style: TextStyle(
                                    fontSize: Sizes.titleSize / 1.2,
                                    fontWeight: Sizes.f400),
                              ),
                              SizedBox(width: Sizes.space25),
                              SizedBox(
                                width: 230,
                                height: 45,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: sizes.length,
                                  itemBuilder: (BuildContext context, int i) {
                                    return SizedBox(
                                        width: 48,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Text(
                                            "${sizes[i]}",
                                            style: TextStyle(
                                                fontSize: Sizes.titleSize / 1.2,
                                                fontWeight: i == 0
                                                    ? Sizes.titleWeight
                                                    : Sizes.f400,
                                                color: i == 0
                                                    ? Colors.black
                                                    : Colors.grey),
                                          ),
                                        ));
                                  },
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: Sizes.mb20),
                          MaterialButton(
                            minWidth: 250,
                            height: 50,
                            onPressed: () {},
                            color: Colors.black,
                            child: Text(
                              "+Add To Cart",
                              style: TextStyle(
                                fontSize: Sizes.buttonSize,
                                fontWeight: Sizes.titleWeight,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
