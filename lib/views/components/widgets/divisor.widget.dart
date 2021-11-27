import 'package:flutter/material.dart';

divisor({double? right, double? left}) {
  right == null ? right = 25.0 : right = right;
  left == null ? left = 45.0 : left = left;
  return Center(
    child: Container(
      height: 1,
      margin: EdgeInsets.only(right: right, left: left),
      child: const Divider(),
    ),
  );
}
