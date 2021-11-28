import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manju/views/components/addons/saveindex.addons.dart';
import 'package:manju/views/components/widgets/tile.widget.dart';

contentBar({
  required String toname,
  required String forin,
  required String date,
}) {
  return Container(
    margin: const EdgeInsets.only(left: 20, right: 15),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: const AssetImage('assets/perfilisEmpty.png'),
          child: Container(
            child: Text(
              saveIndex(text: toname),
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      toname,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    tileUnic(
                        icon: CupertinoIcons.chevron_right,
                        text: date,
                        textColor: Colors.grey.withOpacity(.5)),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text('Para: ', style: TextStyle(fontSize: 12)),
                    Text(forin,
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
