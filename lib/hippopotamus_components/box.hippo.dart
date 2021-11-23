import 'package:flutter/material.dart';
import 'package:manju/colors/colors.colors.asset.dart';

class BoxHippo extends StatelessWidget {
  String title;
  String category;
  BoxHippo({Key? key, required this.title, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: manjuPrimaryWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        children: [
          Container(
            width: 50,
            child: Icon(
              Icons.radio_button_unchecked,
              color: manjuDisableColor,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title),
              SizedBox(height: 5),
              Text(category, style: TextStyle(color: manjuDisableColor))
            ],
          ),
        ],
      ),
    );
  }
}
