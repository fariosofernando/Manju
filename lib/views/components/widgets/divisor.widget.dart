import 'package:flutter/material.dart';

divisor({double? right, double? left, double? top, double? bottom}) {
  right == null ? right = 25.0 : right = right;
  left == null ? left = 45.0 : left = left;
  top == null ? top = 0 : top = top;
  bottom == null ? bottom = 0 : bottom = bottom;
  return Center(
    child: Container(
      height: 1,
      margin: EdgeInsets.only(right: right, left: left, top: top),
      child: const Divider(),
    ),
  );
}
