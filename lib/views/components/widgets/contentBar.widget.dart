import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manju/views/components/widgets/tile.widget.dart';

contentBar() {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 15),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/perfilisEmpty.png'),
          child: Container(
            child: Text(
              'A',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Apple',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    tileUnic(
                        icon: CupertinoIcons.chevron_right,
                        text: '25/10/21',
                        textColor: Colors.grey.withOpacity(.5)),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text('Para: ', style: TextStyle(fontSize: 12)),
                    Text('kevennhancale@gmail.com',
                        style: TextStyle(
                            letterSpacing: 0,
                            fontSize: 12,
                            color: Colors.grey.withOpacity(.5))),
                    Icon(CupertinoIcons.chevron_right,
                        color: Colors.grey.withOpacity(.5), size: 15)
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
