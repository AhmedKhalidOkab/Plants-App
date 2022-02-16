import 'package:flutter/material.dart';
import 'package:planet_app/constants.dart';

// ignore: camel_case_types
class plantNameAndPrice extends StatelessWidget {
  final String name;
  final String county;
  final double price;

  const plantNameAndPrice({
    Key? key,
    required this.name,
    required this.county,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: '$name\n',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                TextSpan(
                  text: county,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: kPrimaryColor.withOpacity(.5)),
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
                .copyWith(color: kPrimaryColor, fontSize: 25),
          )
        ],
      ),
    );
  }
}
