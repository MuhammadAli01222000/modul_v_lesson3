import 'package:flutter/material.dart';

void main() => runApp(Task3());

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xff62cff4), Color(0xff2c67f2)],
                ),
              ),
            ),

            ///Slivers
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  leading: Icon(Icons.add, color: Colors.white, size: 30),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                  title: Text("Tashkent"),
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                  backgroundColor: Colors.transparent,
                  expandedHeight: 400,
                  stretch: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      alignment: Alignment(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white.withOpacity(0.85),
                                ),
                              ),
                              Text(
                                '15',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white.withOpacity(0.85),
                                  height: 1,
                                ),
                              ),
                              Text(
                                '\u2103',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white.withOpacity(0.85),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Clear 16\u00B0/^u00Bo",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.85),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 15),
                          Card(
                            color: Colors.transparent,
                            elevation: 0.1,
                            shadowColor: Colors.black45,
                            shape: StadiumBorder(),
                            child: Text(
                              " Aqi 33",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    stretchModes: [
                      StretchMode.fadeTitle,
                      StretchMode.blurBackground,
                      StretchMode.zoomBackground,

                    ],

                  ),
                ),
                SliverList(delegate: SliverChildListDelegate(
                  [for (var i=0;i<4;i++)
                    Card(
                      color: Colors.transparent,
                      elevation: 0.1,
                      shadowColor: Colors.black45,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: SizedBox(
                        height: 300,
                        width: double.infinity,
                      ),
                    )

                  ],
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
