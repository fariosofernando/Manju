import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manju/controllers/spec-sms.controller.dart';
import 'package:manju/views/colors/colors.colors.asset.dart';
import 'package:manju/views/components/widgets/blacktext.text.widget.dart';
import 'package:manju/views/components/widgets/editar.text.widget.dart';
import 'package:manju/views/components/widgets/tile.widget.dart';
import 'dart:developer' as developer;

import 'components/widgets/divisor.widget.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [editar()],
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
                        child: const Text(
                          'Caixa de manjus',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              tile(
                                  icon: CupertinoIcons.bookmark,
                                  text: 'Recebido',
                                  color: Colors.blueAccent),
                              tileRight(
                                  icon: CupertinoIcons.chevron_right,
                                  text: spec()['qut'].toString(),
                                  textColor: Colors.grey.withOpacity(.5)),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/Receveds');
                        },
                      ),
                      divisor(),
                      Container(
                        padding: const EdgeInsets.only(left: 15.0, right: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            tile(
                                icon: CupertinoIcons.star,
                                text: 'Com estrela',
                                color: Colors.yellowAccent),
                            tileRight(
                                icon: CupertinoIcons.chevron_right,
                                text: '',
                                textColor: Colors.grey.withOpacity(.5)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Meus manjus',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                letterSpacing: 0,
                              ),
                            ),
                            tileRight(
                                icon: CupertinoIcons.chevron_down,
                                text: '',
                                color: Colors.blueAccent),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15.0, right: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            tile(
                                icon: CupertinoIcons.doc,
                                text: 'Rascunhos',
                                color: Colors.blueAccent),
                            tileRight(
                                icon: CupertinoIcons.chevron_right,
                                text: '',
                                textColor: Colors.grey.withOpacity(.5)),
                          ],
                        ),
                      ),
                      divisor(),
                      Container(
                        padding: const EdgeInsets.only(left: 15.0, right: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            tile(
                                icon: CupertinoIcons.share,
                                text: 'Enviado',
                                color: Colors.blueAccent),
                            tileRight(
                                icon: CupertinoIcons.chevron_right,
                                text: '',
                                textColor: Colors.grey.withOpacity(.5)),
                          ],
                        ),
                      ),
                      divisor(),
                      Container(
                        padding: const EdgeInsets.only(left: 15.0, right: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            tile(
                                icon: CupertinoIcons.trash,
                                text: 'Lixo',
                                color: Colors.blueAccent),
                            tileRight(
                                icon: CupertinoIcons.chevron_right,
                                text: '',
                                textColor: Colors.grey.withOpacity(.5)),
                          ],
                        ),
                      ),
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
