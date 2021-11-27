import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manju/views/components/widgets/contentBar.widget.dart';
import 'package:manju/views/components/widgets/divisor.widget.dart';
import 'package:manju/views/components/widgets/tile.widget.dart';

class ViewContent extends StatefulWidget {
  const ViewContent({Key? key}) : super(key: key);

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
                child: Text('232'),
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
                    contentBar(),
                    divisor(top: 10),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        right: 15,
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Your Apple ID was used to sign in to iCloud via a web browser',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\nDear Keven Nhancale,\n\nYou Apple ID (kevennhancale@gmail.com) was used to sign in to iCloud via a web browser.\nDate and Time: 25 October 2021, 11:49 am UTC\n\nif the iformation above looks familiar, you can desregard this email\n\nif you have not signed in to iCloud recently and believe someone else may have accessed your account, go to...',
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
