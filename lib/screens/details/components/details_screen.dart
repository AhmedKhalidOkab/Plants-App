// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:planet_app/screens/details/components/body_of_details.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body_Of_details());
  }
}
