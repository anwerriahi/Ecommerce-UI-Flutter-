import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/category_state.dart';
import 'package:flutter_application_1/controller/methods.dart';
import 'package:flutter_application_1/screens/product_details.dart';
import 'package:flutter_application_1/widgets/categories_zone.dart';
import 'package:flutter_application_1/widgets/search_zone.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double mb = 40.0; //margin bottom (space between parts)
  final double titleSize = 25.0;
  final FontWeight titleWeight = FontWeight.bold;

  final List<Map> products = [
    {
      "pic": "images/smartwatch.png",
      "name": "Logitech G 231",
      "technology": "BlueTooth Headphone",
      "price": 359,
      "category": "electrical",
      "type": "watch"
    },
    {
      "pic": "images/headphone.png",
      "name": "JBL Headphone",
      "technology": "BlueTooth Headphone",
      "price": 199,
      "category": "electrical",
      "type": "headphone"
    },
    {
      "pic": "images/smartwatch.png",
      "name": "Logitech G 231",
      "technology": "BlueTooth Headphone",
      "price": 359,
      "category": "electrical",
      "type": "watch"
    },
    {
      "pic": "images/smartwatch.png",
      "name": "Logitech G 231",
      "technology": "BlueTooth Headphone",
      "price": 369,
      "category": "electrical",
      "type": "Headphone"
    },
    {
      "pic": "images/smartwatch.png",
      "name": "Logitech G 231",
      "technology": "BlueTooth Headphone",
      "price": 359,
      "category": "electrical",
      "type": "watch"
    },
    {
      "pic": "images/shoes1.png",
      "name": "kinetix kb 231 sport shoes",
      "technology": "Comfortable",
      "price": 99,
      "category": "men",
      "type": "shoes"
    },
  ];
  final List<Map> iconList = [
    {
      "men":
          '''<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 64 64" viewBox="0 0 64 64" id="shoes"><path d="M8.76,48.42c-2.15-0.07-3.94-0.4-5.34-0.98c-2.41-0.99-3.81-3.54-3.33-6.06c0.01-0.07,0.13-0.6,0.2-0.76l1.63-4.29
				c0.68-1.87,1.23-3.85,1.67-6.04c0.5-2.47,1.36-5.51,1.37-5.54c0.23-1.06,0.94-1.92,1.91-2.31c0.95-0.38,2-0.26,2.89,0.34
				c0.34,0.22,1.31,1.16,2.65,2.45c0.5,0.48,0.95,0.92,1.23,1.18c1.14,1.06,2.63,1.55,3.99,1.34c1.38-0.23,2.06-0.95,2.07-0.96
				c1.67-2.06,0.29-6.5,0.13-7c-0.27-1.36,0.08-2.55,0.96-3.35c0.85-0.77,2.06-1.02,3.23-0.67c0.53,0.16,1.22,0.81,2.48,2
				c3.12,2.95,8.92,8.45,19.82,13.65l-0.1,0.5l0.21-0.45c0.87,0.41,3.55,1.21,3.58,1.22c2.65,0.71,5.39,1.23,8.14,1.55
				c1.15,0.11,2.79,0.4,4.06,1.08c1.26,0.67,1.97,2.12,1.76,3.6c-0.26,1.85-1.06,2.66-1.75,3.37l-0.09,0.09
				c-0.34,0.41-4.48,5.29-12.7,5.51L8.76,48.42z M8,23.2c-0.26,0-0.51,0.05-0.75,0.15c-0.67,0.27-1.16,0.87-1.33,1.64
				c-0.02,0.06-0.87,3.06-1.36,5.49c-0.45,2.24-1.01,4.26-1.72,6.19l-1.63,4.31c-0.04,0.11-0.13,0.5-0.15,0.6
				c-0.39,2.06,0.76,4.16,2.74,4.97c1.29,0.53,2.97,0.84,4.98,0.9l40.63-0.55c7.94-0.21,11.93-5.11,11.97-5.16
				c0.01-0.01,0.02-0.02,0.03-0.04l0.11-0.11c0.68-0.7,1.26-1.3,1.48-2.82c0.15-1.07-0.35-2.12-1.25-2.59
				c-0.88-0.48-2.19-0.82-3.7-0.97c-2.8-0.33-5.59-0.86-8.3-1.58c-0.13-0.04-2.8-0.83-3.73-1.27c0,0-0.11-0.05-0.11-0.05
				c-11.04-5.27-17.14-11.05-20.07-13.83c-0.95-0.9-1.77-1.68-2.08-1.77c-0.84-0.25-1.69-0.08-2.28,0.46
				c-0.61,0.56-0.86,1.41-0.68,2.35c0.28,0.86,1.65,5.48-0.33,7.91c-0.05,0.06-0.91,1-2.66,1.29c-1.66,0.27-3.46-0.32-4.82-1.59
				c-0.28-0.26-0.74-0.7-1.24-1.19c-0.88-0.85-2.21-2.14-2.51-2.33C8.85,23.33,8.42,23.2,8,23.2z"></path><path d="M33.02 43.4c-10.8 0-21.6-.71-32.33-2.12C.42 41.24.23 41 .26 40.73c.04-.27.27-.46.55-.42 20.48 2.69 41.24 2.81 61.7.34.27-.03.52.16.55.43.03.27-.16.52-.43.55C52.81 42.8 42.92 43.4 33.02 43.4zM21.1 37.97c-.1 0-.2-.03-.29-.1-.22-.16-.27-.47-.11-.69l3.87-5.29c.16-.22.47-.27.69-.11.22.16.27.47.11.69l-3.87 5.29C21.41 37.9 21.26 37.97 21.1 37.97zM25.48 37.6c-.1 0-.2-.03-.29-.1-.22-.16-.27-.47-.11-.69l3.87-5.29c.16-.22.47-.27.69-.11.22.16.27.47.11.69l-3.87 5.29C25.78 37.53 25.63 37.6 25.48 37.6z"></path></svg>''',
      "category": "men"
    },
    {
      "women":
          '''<svg xmlns="http://www.w3.org/2000/svg" width="512" height="512" fill-rule="evenodd" clip-rule="evenodd" image-rendering="optimizeQuality" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" viewBox="0 0 512 512" id="high-heel-shoes"><path fill="#2b2a29" d="M60 455l202 0c0,0 50,-1 68,-63 18,-62 26,-100 55,-119 28,-19 44,18 46,58 2,41 4,116 4,116 0,0 3,11 13,11 9,0 15,-6 15,-14 0,-9 4,-114 9,-151 4,-37 28,-89 28,-89 0,0 26,-52 -32,-105 -58,-54 -69,-41 -69,-41 0,0 -22,15 -20,32 1,18 -15,64 -48,135 -33,72 -60,151 -113,143 -54,-8 -32,-38 -32,-38 0,0 2,-31 -37,-8 -30,17 -93,62 -127,86 -23,17 -25,47 19,47 39,0 19,0 19,0z"></path></svg>''',
      "category": "women"
    },
    {
      "electrical":
          '''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" width="256" height="256"><path d="M32,54A21.994,21.994,0,0,0,43.891,13.5L44.9,11.439A1,1,0,0,0,44,10H28a.994.994,0,0,0-.895.567A21.991,21.991,0,0,0,32,54ZM24.252,36.664A1,1,0,0,0,25,37h5.7L27.911,47.451a15.987,15.987,0,0,1-1.646-30.386L24.007,35.881A1,1,0,0,0,24.252,36.664ZM52,32A19.879,19.879,0,0,1,28.7,51.7a.926.926,0,0,0,.13-.149l1.12-1.68A18.22,18.22,0,0,0,32,50,17.994,17.994,0,0,0,42.12,17.123l.887-1.814A19.845,19.845,0,0,1,52,32Zm-9.118-2.472A1,1,0,0,0,42,29H36.316l4.919-10.065A16,16,0,0,1,32,48c-.261,0-.514-.027-.772-.039l11.6-17.406A1,1,0,0,0,42.882,29.528ZM28.887,12H42.4L33.816,29.561a1,1,0,0,0,.9,1.439h5.417l-9.6,14.408,2.44-9.15A1,1,0,0,0,32,35H26.127Zm-2.1.7-.258,2.156A17.985,17.985,0,0,0,27.4,49.381l-.363,1.361a.985.985,0,0,0,.044.62A19.981,19.981,0,0,1,26.789,12.7Z" fill="#000000" class="color000 svgShape"></path><path d="M41.231 39.668a12.087 12.087 0 0 1-1.847 1.792 1 1 0 1 0 1.232 1.575 14.086 14.086 0 0 0 2.153-2.089 1 1 0 0 0-1.538-1.278zM20.964 23.384a14.072 14.072 0 0 0-1.386 2.154 1 1 0 1 0 1.773.924 12.052 12.052 0 0 1 1.19-1.847 1 1 0 1 0-1.577-1.231z" fill="#000000" class="color000 svgShape"></path></svg>''',
      "category": "electrical"
    },
    {
      "hobbies":
          '''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="sports-ball"><g data-name="Outline"><path d="M10.5 19A8.5 8.5 0 1 0 2 10.5a8.51 8.51 0 0 0 8.5 8.5zm5.26-12.315a6.489 6.489 0 0 1 0 7.63A6.518 6.518 0 0 1 14.6 10.5a6.518 6.518 0 0 1 1.16-3.815zm-9.1-1.423a6.551 6.551 0 0 1 7.679-.007 8.855 8.855 0 0 0 0 10.49 6.551 6.551 0 0 1-7.679-.007 8.8 8.8 0 0 0-.004-10.476zM5.234 6.7A6.469 6.469 0 0 1 6.4 10.5a6.469 6.469 0 0 1-1.165 3.805 6.483 6.483 0 0 1 0-7.61zM53.5 45a8.5 8.5 0 1 0 8.5 8.5 8.51 8.51 0 0 0-8.5-8.5zm0 15a6.5 6.5 0 1 1 6.5-6.5 6.508 6.508 0 0 1-6.5 6.5zM3 24h1v1a1 1 0 0 0 2 0v-1h1a1 1 0 0 0 0-2H6v-1a1 1 0 0 0-2 0v1H3a1 1 0 0 0 0 2zm36 32a1 1 0 0 0-1 1v1h-1a1 1 0 0 0 0 2h1v1a1 1 0 0 0 2 0v-1h1a1 1 0 0 0 0-2h-1v-1a1 1 0 0 0-1-1zM26 5a3 3 0 1 0-3 3 3 3 0 0 0 3-3zm-4 0a1 1 0 1 1 1 1 1 1 0 0 1-1-1zm37 32a3 3 0 1 0 3 3 3 3 0 0 0-3-3zm0 4a1 1 0 1 1 1-1 1 1 0 0 1-1 1zM43 2c-10.218-.209-19.21 8.781-19 19a18.5 18.5 0 0 0 .3 3.284A19.219 19.219 0 0 0 21 24c-10.22-.211-19.212 8.785-19 19-.211 10.215 8.78 19.211 19 19 10.22.211 19.212-8.785 19-19a19.211 19.211 0 0 0-.282-3.291A18.868 18.868 0 0 0 43 40c10.215.211 19.21-8.779 19-19 .211-10.222-8.788-19.213-19-19zM30.989 8.966l.148-.146A17 17 0 0 1 36.243 20H26.029a16.868 16.868 0 0 1 4.96-11.034zM22 36.756v-6.33l4.809-3.414a16.933 16.933 0 0 1 6.226 3.977 17.62 17.62 0 0 1 1.374 1.553l-1.762 5.64-5.764 2.039zm3.544 4.967-1.726 5.186h-5.636l-1.726-5.186L21 38.5zm8.573-12.473a18.867 18.867 0 0 0-7.671-4.462A17.23 17.23 0 0 1 26.033 22h10.21a16.9 16.9 0 0 1-2.126 7.25zm-9.791-2.927L21 28.683l-3.326-2.36a17.312 17.312 0 0 1 6.652 0zm-9.135.689L20 30.426v6.33l-4.883 3.465-5.764-2.039-1.762-5.64a17.083 17.083 0 0 1 7.6-5.53zm-9.027 7.669 1.217 3.9-3.267 2.432a16.828 16.828 0 0 1 2.05-6.332zm.743 17.838a16.864 16.864 0 0 1-2.9-8.935l4.708-3.506 5.761 2.037 1.87 5.621-3.543 4.846zm1.6 2.017 4.078.043 1.315 3.877a17.033 17.033 0 0 1-5.39-3.92zm17.184 4.812a17.268 17.268 0 0 1-9.388 0l-1.884-5.59 3.546-4.849h6.064l3.546 4.849zm2.411-.892 1.307-3.877 4.078-.043a17.033 17.033 0 0 1-5.382 3.92zm6.988-5.937-5.9.063-3.543-4.846 1.87-5.621 5.763-2.037 4.706 3.5a16.856 16.856 0 0 1-2.893 8.941zm-.474-13.94 1.217-3.9a16.815 16.815 0 0 1 2.049 6.326zm7.384-.61a17.007 17.007 0 0 1-2.783-.4 18.847 18.847 0 0 0-3.671-6.8 18.9 18.9 0 0 0 2.7-8.769H42zM42 20h-3.753a19 19 0 0 0-5.595-12.494A16.849 16.849 0 0 1 42 4.029zm2-15.971a16.849 16.849 0 0 1 9.348 3.477A19.009 19.009 0 0 0 47.753 20H44zm0 33.942V22h3.753a19.009 19.009 0 0 0 5.595 12.494A16.849 16.849 0 0 1 44 37.971zm10.863-4.791A17.009 17.009 0 0 1 49.757 22h10.214a16.88 16.88 0 0 1-5.108 11.18zM49.757 20a17.009 17.009 0 0 1 5.106-11.18A16.88 16.88 0 0 1 59.971 20z"></path><circle cx="52" cy="57" r="1"></circle><circle cx="57" cy="52" r="1"></circle><circle cx="56" cy="56" r="1"></circle></g></svg>''',
      "category": "hobbies"
    }
  ];
  List? filteredProducts;
  @override
  void initState() {
    super.initState();
    filteredProducts =
        Methods.filterByCategory(products, CategoryState.category);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
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
      body: Container(
        padding:
            EdgeInsets.only(top: mb, left: mb / 2, right: mb / 2, bottom: 0),
        child: SizedBox(
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              searchZone(mb, screenHeight, screenWidth),
              categoriesZone(mb, screenHeight, screenWidth, titleSize,
                  titleWeight, iconList, (String newCategory) {
                setState(() {
                  CategoryState.category = newCategory;
                  filteredProducts = Methods.filterByCategory(
                      products, CategoryState.category);
                });
              }),
              SizedBox(height: mb),
              Text(
                "Best Selling",
                style: TextStyle(fontSize: titleSize, fontWeight: titleWeight),
              ),
              SizedBox(height: mb),
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: screenHeight * 0.47,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 30),
                  itemCount: filteredProducts!.length,
                  physics: const ScrollPhysics(
                      parent: NeverScrollableScrollPhysics()),
                  itemBuilder: (context, i) {
                    return InkWell(
                      highlightColor: const Color.fromARGB(0, 255, 255, 255),
                      splashColor: const Color.fromARGB(0, 255, 255, 255),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProductDetails(
                                productItem: filteredProducts![i])));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenHeight * 0.28,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Center(
                                child: Image.asset(
                              filteredProducts![i]["pic"],
                              width: 150,
                              fit: BoxFit.contain,
                            )),
                          ),
                          SizedBox(height: mb),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                filteredProducts![i]["name"],
                                style: TextStyle(
                                    fontSize: titleSize,
                                    fontWeight: titleWeight),
                              ),
                              Text(
                                filteredProducts![i]["technology"],
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: titleSize * 0.7,
                                ),
                              ),
                              Text(
                                "\$${filteredProducts![i]["price"]}",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: titleSize,
                                    fontWeight: titleWeight),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
