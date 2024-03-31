import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/category_state.dart';
import 'package:flutter_svg/svg.dart';

Widget categoriesZone(
        double mb,
        double screenHeight,
        double screenWidth,
        double titleSize,
        FontWeight titleWeight,
        List<Map> iconList,
        Function(String) onCategoryChanged) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: mb),
          child: Text(
            "Categories",
            style: TextStyle(fontSize: titleSize, fontWeight: titleWeight),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.14,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: iconList.length,
              itemBuilder: (context, index) {
                String aux = iconList[index]["category"].toString();
                return MaterialButton(
                  splashColor: const Color.fromARGB(0, 255, 255, 255),
                  onPressed: () {
                    onCategoryChanged(aux);
                  },
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          height: aux == CategoryState.category ? 90 : 80,
                          width: aux == CategoryState.category ? 90 : 80,
                          decoration: BoxDecoration(
                              color: aux == CategoryState.category
                                  ? Colors.orange
                                  : Colors.black12,
                              boxShadow: [
                                if (aux == CategoryState.category)
                                  const BoxShadow(
                                      color: Colors.black87,
                                      blurStyle: BlurStyle.outer,
                                      blurRadius: 1,
                                      spreadRadius: 1)
                              ],
                              border: Border(
                                top: aux == CategoryState.category
                                    ? const BorderSide(
                                        width: 1,
                                        style: BorderStyle.solid,
                                        color: Colors.white)
                                    : BorderSide.none,
                                bottom: aux == CategoryState.category
                                    ? const BorderSide(
                                        width: 1,
                                        style: BorderStyle.solid,
                                        color: Colors.white)
                                    : BorderSide.none,
                                left: aux == CategoryState.category
                                    ? const BorderSide(
                                        width: 1,
                                        style: BorderStyle.solid,
                                        color: Colors.white)
                                    : BorderSide.none,
                                right: aux == CategoryState.category
                                    ? const BorderSide(
                                        width: 1,
                                        style: BorderStyle.solid,
                                        color: Colors.white)
                                    : BorderSide.none,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                          child: SvgPicture.string(iconList[index][aux],
                              alignment: Alignment.center,
                              colorFilter: aux == CategoryState.category
                                  ? const ColorFilter.mode(
                                      Colors.white, BlendMode.srcIn)
                                  : null),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          iconList[index]["category"],
                          style: TextStyle(
                              fontSize: titleSize * 0.7,
                              color: aux == CategoryState.category
                                  ? Colors.black
                                  : Colors.grey[700]),
                        )
                      ]),
                );
              }),
        ),
      ],
    );
