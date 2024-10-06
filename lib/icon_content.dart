import 'package:flutter/material.dart';
import 'constant.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconContent(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        Icon(
          icon,
          size: 80,
          color: Color(0xFFE8E8E8),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: KlabelTextstyle,
        )
      ],
    );
  }
}
