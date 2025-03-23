import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Task4());

class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
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
                  colors: [const Color(0xff62cff4), const Color(0xff2c67f2)],
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
                                '16',
                                style: TextStyle(
                                  fontSize: 100,
                                  color: Colors.white.withOpacity(0.85),
                                  height: 1,
                                ),
                              ),
                              // ),SizedBox(height: 5,),
                              // Text(
                              //   'Clear 16\u00B0/6\u00B0',
                              //   style: TextStyle(
                              //     fontSize: 20,
                              //     color: Colors.white.withOpacity(0.85),
                              //     fontWeight: FontWeight.w500,
                              //   ),
                              // ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Clear 16\u00B0/16\u00B0",
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

                ///Todo body
                SliverToBoxAdapter(
                  child: Card(
                    color: Colors.transparent,
                    elevation: 0.1,
                    shadowColor: Colors.black45,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar_circle_fill,
                                  color: Color.fromRGBO(255, 255, 255, 0.85),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "5-Day Forecast",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.85),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(" 🌕 Today:clear"),
                                Text("16\u00B0/^u00Bo"),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("✨ Tomorrow: clear"),
                                Text("17\u00B0 / 5\u00B0"),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("🌥 Today:clear"),
                                Text("20\u00B0 / 9\u00B0"),
                              ],
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0.1,
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.white38,
                                overlayColor: Colors.blueAccent,
                                shape: StadiumBorder(),
                                padding: EdgeInsets.symmetric(vertical: 10),
                                minimumSize: Size(double.infinity, 0),
                              ),
                              child: Text('5- Day Forecast'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
