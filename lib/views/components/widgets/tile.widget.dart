import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

tile({
  required IconData icon,
  required String text,
  Color? color,
  Color? textColor,
}) {
  color == null ? color = Colors.grey.withOpacity(.1) : color = color;
  textColor == null ? textColor = Colors.black87 : textColor = textColor;
  return Container(
    child: Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ],
    ),
  );
}

tileRight({
  required IconData icon,
  required String text,
  Color? color,
  Color? textColor,
}) {
  color == null ? color = Colors.grey.withOpacity(.5) : color = color;
  textColor == null ? textColor = Colors.black87 : textColor = textColor;

  return Container(
    child: Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(
          icon,
          color: color,
          size: 15,
        ),
      ],
    ),
  );
}
