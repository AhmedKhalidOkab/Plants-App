import 'package:flutter/material.dart';
import 'package:planet_app/constants.dart';

class scrollingWithRow extends StatelessWidget {
  const scrollingWithRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
              image: 'assets/images/bottom_img_1.png', preseedon: () {}),
          FeaturedPlantCard(
              image: 'assets/images/bottom_img_2.png', preseedon: () {})
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  final String image;
  final Function preseedon;
  const FeaturedPlantCard({
    Key? key,
    required this.image,
    required this.preseedon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: preseedon(),
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            bottom: kDefaultPadding / 2,
            top: kDefaultPadding / 2),
        width: size.width * .8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
