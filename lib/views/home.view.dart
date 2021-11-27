import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manju/controllers/tasuku.dart';
import 'package:manju/models/tasuku.models.dart';
import 'package:manju/views/colors/colors.colors.asset.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var file = 'assets/photo_tv_tower.webp';
  List<Tasuku> selecionadas = [];

  appBarDinamica() {
    if (selecionadas.isEmpty) {
      return AppBar(
        leadingWidth: 150,
        leading: Container(
          child: Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context, false),
                icon: const Icon(
                  CupertinoIcons.back,
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                'Anterior',
                style: TextStyle(color: Colors.blueAccent),
              )
            ],
          ),
        ),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'Editar',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 13.5,
                ),
              ),
            ),
          )
        ],
        centerTitle: true,
        title: const Text(
          '',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.normal,
            fontSize: 17.5,
          ),
        ),
        backgroundColor: Colors.white,
      );
    } else {
      return AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            setState(() {
              selecionadas = [];
            });
          },
          icon: const Icon(Icons.close),
        ),
        title: (selecionadas.length == 1)
            ? Text(
                '${selecionadas.length} item selecionado',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 13.5,
                  fontWeight: FontWeight.normal,
                ),
              )
            : Text(
                '${selecionadas.length} items selecionados',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 13.5,
                  fontWeight: FontWeight.normal,
                ),
              ),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: manjuPrimaryColor),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final manjus = Tasukus.manjus;
    return Scaffold(
      appBar: appBarDinamica(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int manju) {
          return ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            leading: (selecionadas.contains(manjus[manju]))
                ? GestureDetector(
                    onTap: () {
                      // Quando está seleciodo
                      setState(() {
                        selecionadas.remove(manjus[manju]);
                      });
                    },
                    child: Icon(
                      Icons.check,
                      size: 25,
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      // Quando está descelecionado
                      setState(() {
                        selecionadas.add(manjus[manju]);
                      });
                    },
                    child: Icon(
                      Icons.check_box_outline_blank,
                      size: 25,
                    ),
                  ),
            title: Text(
              manjus[manju].title,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 13.5,
              ),
            ),
            trailing: Text(
              manjus[manju].category,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13.0,
              ),
            ),
            selected: selecionadas.contains(manjus[manju]),
            selectedTileColor: manjuPrimaryWhiteColor,
            onLongPress: () {
              setState(() {
                (selecionadas.contains(manjus[manju]))
                    ? selecionadas.remove(manjus[manju])
                    : selecionadas.add(manjus[manju]);
              });
            },
          );
        },
        padding: EdgeInsets.only(top: 6.0, bottom: 6.0, right: 6.0, left: 3.0),
        separatorBuilder: (_, __) => Divider(),
        itemCount: manjus.length,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selecionadas.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () {},
              label: Text(
                'Enviar',
                style: TextStyle(
                  letterSpacing: 0,
                ),
              ))
          : null,
    );
  }
}
