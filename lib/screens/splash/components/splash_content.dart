import 'package:flutter/material.dart';
import 'package:recommendation_app/constants.dart';
import 'package:recommendation_app/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        'Recommendation App',
        style: TextStyle(
          fontSize: getProportionateScreenWidth(36),
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        text,
        textAlign: TextAlign.center,
      ),
      Spacer(flex: 2),
      Image.asset(
        image,
        height: getProportionateScreenHeight(400),
        width: getProportionateScreenWidth(300),
        fit: BoxFit.cover,
      ),
    ]);
  }
}
