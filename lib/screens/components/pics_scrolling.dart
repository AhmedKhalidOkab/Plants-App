// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:planet_app/constants.dart';
import 'package:planet_app/screens/details/components/details_screen.dart';

class Recommendedplantscrolling extends StatelessWidget {
  const Recommendedplantscrolling({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPalnetcard(
            title: 'Angelica',
            image: 'assets/images/image_1.png',
            price: 444,
            country: 'Russia',
            picPressed: () {},
          ),
          RecommendPalnetcard(
            picPressed: () {},
            title: 'samantha',
            image: 'assets/images/image_2.png',
            price: 550,
            country: 'France',
          ),
          RecommendPalnetcard(
            picPressed: () {},
            title: 'Rosana',
            image: 'assets/images/image_3.png',
            price: 380,
            country: 'italy',
          ),
        ],
      ),
    );
  }
}

class RecommendPalnetcard extends StatelessWidget {
  final String image;
  final String title;
  final String country;
  final double price;
  final Function picPressed;
  const RecommendPalnetcard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.picPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * .40,
      child: Column(
        children: [
          Image.asset(image),
          InkWell(
            onTap: picPressed(),
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(.5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '$title\n'.toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: title.toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(.5)),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
