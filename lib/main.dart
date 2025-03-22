import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Task1());

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: ListTile(
                      tileColor: Color.fromRGBO(237, 237, 237, 1),
                      leading: Icon(CupertinoIcons.doc_on_doc),
                      trailing: Icon(CupertinoIcons.chevron_forward),
                      title: Text(
                        "Invoces",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: ListTile(
                      tileColor: Color.fromRGBO(237, 237, 237, 1),
                      leading: Icon(CupertinoIcons.archivebox),
                      trailing: Icon(CupertinoIcons.chevron_forward),
                      title: Text(
                        "Archive",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: ListTile(
                      tileColor: Color.fromRGBO(237, 237, 237, 1),
                      leading: Icon(CupertinoIcons.globe),
                      trailing: Icon(CupertinoIcons.chevron_forward),
                      title: Text(
                        "Language",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: ListTile(
                      tileColor: Color.fromRGBO(237, 237, 237, 1),
                      leading: Icon(CupertinoIcons.question_circle),
                      trailing: Icon(CupertinoIcons.chevron_forward),
                      title: Text(
                        "Help",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
