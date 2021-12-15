import 'package:flutter/material.dart';
import 'package:harubom/components/default_button.dart';
import 'package:harubom/loginscreen.dart';
import 'package:harubom/models/Product.dart';

import '../size_config.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              SizedBox(
                height: 90,
                width: 330,
                child: TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: SizedBox(
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFF458CAA),
                            primary: Colors.blue,
                            onSurface: Color(0xffA0054F),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                          ),
                          onPressed: () => {
                                Navigator.pushNamed(
                                    context, LoginScreen.routeName)
                              },
                          child: const Text(
                            'حجز ',
                            textDirection: TextDirection.rtl,
                            style: const TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Cairo',
                                fontSize: 20),
                          )),
                    )),
              )
              // // TopRoundedContainer(
              /// //   color: Color(0xFFF6F7F9),
              //   // child: Column(
              //   //   children: [
              //   //     ColorDots(product: product),
              //   //     // TopRoundedContainer(
              //   //     //   color: Colors.white,
              //   //     //   child: Padding(
              //   //     //     // ignore: prefer_const_constructors
              //   //     //     padding: EdgeInsets.only(
              //   //     //       left: 10,
              //   //     //       right: 10,
              //   //     //       bottom: 40,
              //   //     //       top: 15,
              //   //     //     ),
              //   //     //     child: DefaultButton(
              //   //     //       text: "Add To Cart",
              //   //     //       press: () {},
              //   //     //     ),
              //   //     //   ),
              //   //     // ),
              //   //   ],
              //   // ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
