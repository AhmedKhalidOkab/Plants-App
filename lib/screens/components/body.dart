import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:planet_app/constants.dart';
import 'package:planet_app/screens/components/featurde_plants.dart';
import 'package:planet_app/screens/components/header_with_searchbox.dart';
import 'package:planet_app/screens/components/more_button.dart';
import 'package:planet_app/screens/components/pics_scrolling.dart';
import 'package:planet_app/screens/details/components/details_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //**it enablescroolingin small device */
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithseachBox(size: size),
          MoreButton(
            pressed: () {},
            title: 'Recomended',
          ),
          const Recommendedplantscrolling(),
          MoreButton(
            pressed: () {},
            title: 'Featured Plants',
          ),
          const scrollingWithRow(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
