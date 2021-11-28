import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manju/views/components/addons/slicingcontent.addons.dart';
import 'package:manju/views/components/widgets/divisor.widget.dart';
import 'package:manju/views/components/widgets/tile.widget.dart';

manjuPreview({
  required double width,
  required String toname,
  required String titlemesage,
  required String minContent,
  required bool read,
}) {
  return Column(
    children: [
      Container(
        height: 100,
        child: Row(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: 17,
              child: (read == false)
                  ? CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                    )
                  : CircleAvatar(
                      backgroundColor: Colors.blueAccent.withOpacity(0),
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
                        toname,
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
                            slicingContent(content: titlemesage, limited: 30),
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
                            minContent,
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
