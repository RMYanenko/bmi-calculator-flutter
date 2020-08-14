import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  IconContent({this.urlImg, this.iconLabel});

  final ImageProvider urlImg;
  final String iconLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: urlImg,
          width: 80.0,
          color: Color(0xFF8D8E98),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconLabel,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
