import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manju/views/components/widgets/divisor.widget.dart';
import 'package:manju/views/components/widgets/tile.widget.dart';

manjuPreview({required double width}) {
  return Column(
    children: [
      Container(
        height: 100,
        child: Row(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: 17,
              child: CircleAvatar(
                backgroundColor: Colors.blueAccent,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  width: width - 36,
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Luis Jó',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      tileUnic(
                          icon: CupertinoIcons.chevron_right,
                          text: 'Ontem',
                          textColor: Colors.grey.withOpacity(.5)),
                    ],
                  ),
                ),
                Container(
                  width: width - 36,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Quase perdi a credibilidade',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, top: 2),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Olá, tudo bem? Hoje eu quero partilhar um erro que eu cometi usando Excel...',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      divisor(right: 11.0),
      /////////////////////
    ],
  );
}
