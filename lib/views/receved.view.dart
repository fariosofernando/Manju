import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manju/views/components/widgets/preview.widget.dart';
import 'package:manju/views/view-content.view.dart';

import 'components/widgets/divisor.widget.dart';
import 'components/widgets/tile.widget.dart';

class Receved extends StatefulWidget {
  const Receved({Key? key}) : super(key: key);

  @override
  _RecevedState createState() => _RecevedState();
}

class _RecevedState extends State<Receved> {
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
            const Text(
              'Anterior',
              style: TextStyle(color: Colors.blueAccent),
            )
          ],
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: const Text(
                          'Recebido',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            letterSpacing: 0,
                          ),
                        ),
                      ),

                      ///////////////
                      GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ViewContent())),
                        child: manjuPreview(
                            width: MediaQuery.of(context).size.width),
                      ),
                      //////////////
                    ],
                  ),
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
                        children: [
                          Expanded(
                              child: Stack(
                            children: [
                              Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Atualizado a 25/10/21',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black87.withOpacity(.8),
                                    ),
                                  ),
                                  Text(
                                    'Rede offline',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black87.withOpacity(.3),
                                    ),
                                  ),
                                ],
                              )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 50,
                                    child: const Center(
                                      child: Icon(
                                        CupertinoIcons.app,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
