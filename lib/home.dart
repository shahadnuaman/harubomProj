// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:harubom/categories.dart';
import 'package:harubom/components/coustom_bottom_nav_bar.dart';
import 'package:harubom/components/product.dart';
import 'package:harubom/components/spacialoffers.dart';
import 'package:harubom/detailsscreen.dart';
import 'package:harubom/enums.dart';
import 'package:harubom/sidebarmenu.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";

  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        ///routes:
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/details': (context) => DetailsScreen()
        },
        home: Scaffold(
          ///appBar: app(title: Text("title")),
          drawer: NavDrawer(),
          body: ListView(children: [
            const SizedBox(height: 40),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 271,
                      height: 35,
                      child: TextField(
                        style: const TextStyle(fontFamily: 'Cairo'),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          hintTextDirection: TextDirection.rtl,
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(15.0)),
                          suffixIcon: const Icon(
                            Icons.search,
                            textDirection: TextDirection.rtl,
                            color: Color(0xffA0054F),
                          ),
                          hintText: 'بحث',
                          hintStyle: const TextStyle(
                              fontSize: 12.0, color: Color(0xffA0054F)),
                        ),
                        // autofocus: false,
                      )),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Iconsax.menu_14),
                    iconSize: 35,
                    color: Color(0xffA0054F),
                    onPressed: () =>
                        Navigator.pushNamed(context, NavDrawer.routeName),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Categories(),
              const SizedBox(height: 15),
              SpecialOffers(),
              const SizedBox(height: 30),
              Products(),
              const SizedBox(height: 30),
            ]),
          ]),
          bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
        ));
  }
}
