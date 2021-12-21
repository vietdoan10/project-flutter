import 'package:flutter/material.dart';
import 'package:medical_app/screens/wellcome/components/body.dart';
import '../../size_config.dart';

class WellcomeScreen extends StatelessWidget {
  static String routeName = "/wellcome";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}