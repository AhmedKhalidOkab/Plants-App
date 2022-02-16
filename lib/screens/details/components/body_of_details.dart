// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:planet_app/constants.dart';
import 'package:planet_app/screens/details/components/icon_button.dart';
import 'package:planet_app/screens/details/components/under_pic_name.dart';

class Body_Of_details extends StatelessWidget {
  const Body_Of_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: size.height * .8,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: kDefaultPadding * 3),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding / 3),
                              onPressed: () {
                                Get.back();
                              },
                              icon: SvgPicture.asset(
                                'assets/icons/back_arrow.svg',
                              ),
                            ),
                          ),
                          const Spacer(),
                          const IconBottom(
                            iconPic: 'assets/icons/sun.svg',
                          ),
                          const IconBottom(
                            iconPic: 'assets/icons/icon_2.svg',
                          ),
                          const IconBottom(
                            iconPic: 'assets/icons/icon_3.svg',
                          ),
                          const IconBottom(
                            iconPic: 'assets/icons/icon_4.svg',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * .8,
                    width: size.width * .75,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 60,
                            color: kPrimaryColor.withOpacity(0.29))
                      ],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(63),
                          bottomLeft: Radius.circular(63)),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/img.png'),
                          alignment: Alignment.centerLeft),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const plantNameAndPrice(
            name: 'Angelica',
            price: 440,
            county: 'Russia',
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 85,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(30)),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 90,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(30)),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Description',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
