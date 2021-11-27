import 'package:flutter/material.dart';

blackText(String s, {String? text}) {
  text == null ? text = '' : text = text;
  return Text(
    text,
    style: const TextStyle(color: Colors.black87),
  );
}
