// ignore_for_file: prefer_const_constructors, constant_identifier_names, unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:planet_app/constants.dart';
import 'package:planet_app/screens/components/body.dart';

import 'details/components/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(),
    );
  }

  AppBar Appbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
        focusColor: Colors.white,
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const bool Selected = true;
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding / 2,
          right: kDefaultPadding / 2,
          bottom: kDefaultPadding),
      height: 60,
      decoration: BoxDecoration(color: Colors.white, boxShadow: const [
        BoxShadow(offset: Offset(0, -5), blurRadius: 20, color: kPrimaryColor)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 32,
            icon: Icon(Icons.shopping_bag),
            onPressed: () {
              Get.to(() => DetailScreen());
            },
            color: kPrimaryColor,
          ),
          IconButton(
            iconSize: 32,
            icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 32,
            icon: SvgPicture.asset('assets/icons/user-icon.svg'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
