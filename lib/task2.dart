import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Task2());

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Task2'), centerTitle: true),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(childCount: seasons.length, (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: ListTile(
                    tileColor: seasons[index].color,
                    leading: Icon(
                      seasons[index].iconData,
                      color: CupertinoColors.white,
                    ),
                    subtitle: Text(
                      '${seasons[index].day}',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: CupertinoColors.white,
                      ),
                    ),
                    title: Text(
                      seasons[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: CupertinoColors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

const seasons = [
  Season(
    name: "Autumn",
    day: 91,
    iconData: CupertinoIcons.cloud_drizzle_fill,
    color: CupertinoColors.activeOrange,
  ),
  Season(
    name: "Winter",
    day: 90,
    iconData: CupertinoIcons.snow,
    color: CupertinoColors.activeBlue,
  ),
  Season(
    name: "Autumn",
    day: 92,
    iconData: CupertinoIcons.cloud_sun_bolt_fill,
    color: CupertinoColors.activeGreen,
  ),
  Season(
    name: "Autumn",
    day: 91,
    iconData: CupertinoIcons.sun_max_fill,
    color: CupertinoColors.systemYellow,
  ),
];

class Season {
  final String name;
  final int day;
  final IconData iconData;
  final Color color;
  const Season({
    required this.name,
    required this.day,
    required this.iconData,
    required this.color,
  });
}
