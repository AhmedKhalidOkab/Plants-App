import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planet_app/constants.dart';

class IconBottom extends StatelessWidget {
  final String iconPic;
  const IconBottom({
    Key? key,
    required this.iconPic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * .03),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(.23),
            ),
            const BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white,
            )
          ]),
      child: SvgPicture.asset(iconPic),
    );
  }
}
