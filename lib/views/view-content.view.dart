import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manju/controllers/sms.controller.dart';
import 'package:manju/controllers/spec-sms.controller.dart';
import 'package:manju/models/mesage.model.dart';
import 'package:manju/views/components/widgets/contentBar.widget.dart';
import 'package:manju/views/components/widgets/divisor.widget.dart';
import 'package:manju/views/components/widgets/tile.widget.dart';

class ViewContent extends StatefulWidget {
  Mesage mesage;
  ViewContent({Key? key, required this.mesage}) : super(key: key);

  @override
  _ViewContentState createState() => _ViewContentState();
}

class _ViewContentState extends State<ViewContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 150,
        leading: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context, false),
              icon: const Icon(
                CupertinoIcons.back,
                color: Colors.blueAccent,
              ),
            ),
            Container(
              height: 20,
              width: 40,
              child: Center(
                child: Text(spec()['notread'].toString()),
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(CupertinoIcons.chevron_up, color: Colors.blueAccent),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(CupertinoIcons.chevron_down, color: Colors.blueAccent),
          )
        ],
      ),
      body: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    contentBar(
                        toname: widget.mesage.toName,
                        forin: widget.mesage.forIn,
                        date: widget.mesage.date),
                    divisor(top: 10),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        right: 15,
                        left: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.mesage.titleMesage!,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            widget.mesage.bodyMesage!,
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Divider(
                      height: 1,
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () => {},
                              icon: Icon(
                                CupertinoIcons.archivebox,
                                color: Colors.blueAccent,
                              )),
                          IconButton(
                              onPressed: () => {},
                              icon: Icon(
                                CupertinoIcons.folder,
                                color: Colors.blueAccent,
                              )),
                          IconButton(
                              onPressed: () => {},
                              icon: Icon(
                                CupertinoIcons.return_icon,
                                color: Colors.blueAccent,
                              )),
                          IconButton(
                              onPressed: () => {},
                              icon: Icon(
                                CupertinoIcons.app,
                                color: Colors.blueAccent,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
