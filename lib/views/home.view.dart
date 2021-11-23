import 'package:flutter/material.dart';
import 'package:manju/colors/colors.colors.asset.dart';
import 'package:manju/hippopotamus_components/box.hippo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var file = 'assets/photo_tv_tower.webp';
  List<Widget> boxs = [
    BoxHippo(title: 'Titulo da nota', category: 'Categoria da nota')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(file), // Fundo do background.
                ),
                Container(
                  padding: EdgeInsets.only(top: 70, left: 8, right: 8),
                  child: ListView(
                    children: boxs,
                  ),
                ),
                SafeArea(
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 5, left: 8, right: 8, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundColor: manjuSecundaryColor,
                                child: Text('A'),
                              ),
                              IconButton(
                                onPressed: () => {},
                                icon: const Icon(
                                  Icons.more_vert_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          height: 55,
                          width: double.infinity,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: manjuPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                              ),
                              height: 35,
                              width: 130,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.tungsten_outlined,
                                    color: manjuPrimaryWhiteColor,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Sugestão',
                                    style: TextStyle(
                                        color: manjuPrimaryWhiteColor),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            FloatingActionButton(
                              onPressed: () => {},
                              backgroundColor: manjuPrimaryColor,
                              child: const Icon(
                                Icons.add_outlined,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
