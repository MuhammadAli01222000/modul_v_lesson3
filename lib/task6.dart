import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(const Task6());

class Task6 extends StatefulWidget {
  const Task6({super.key});

  @override
  State<Task6> createState() => _Task6State();
}

class _Task6State extends State<Task6> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class _SliverAppBarDelegete extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;
  const _SliverAppBarDelegete({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  double get minExtent => minHeight;
  @override
  bool shouldRebuild(_SliverAppBarDelegete oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class MyHeader extends StatelessWidget {
  final String headerText;
  const MyHeader({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _SliverAppBarDelegete(
        minHeight: 60.0,
        maxHeight: 200.0,
        child: Container(
          color: Colors.lightBlue,
          child: Center(child: Text(headerText,style: TextStyle(color: Colors.black),)),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      delegate: _SliverAppBarDelegete(
        minHeight: 60.0,
        maxHeight: 200.0,
        child: Container(color: Colors.lightBlue, child: Text(headerText,style: TextStyle(color: Colors.black),)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        MyHeader(headerText: "Header Section 1"),
        SliverGrid.count(
          crossAxisCount: 3,
          children: [
            Container(color: Colors.red, height: 150.0),
            Container(color: Colors.purple, height: 150.0),
            Container(color: Colors.green, height: 150.0),
            Container(color: Colors.orange, height: 150.0),
            Container(color: Colors.yellow, height: 150.0),
            Container(color: Colors.pink, height: 150.0),
            Container(color: Colors.cyan, height: 150.0),
            Container(color: Colors.indigo, height: 150.0),
            Container(color: Colors.blue, height: 150.0),
          ],
        ),
        MyHeader(headerText: "Header Section 2",),
        SliverFixedExtentList(
          delegate: SliverChildListDelegate([
            Container(color: Colors.red),
            Container(color: Colors.purple),
            Container(color: Colors.green),
            Container(color: Colors.orange),
            Container(color: Colors.yellow),
          ]),
          itemExtent: 150.0,
        ),
        MyHeader(headerText: "Header Section 3"),
        SliverGrid(
          delegate: SliverChildBuilderDelegate((
            BuildContext context,
            int index,
          ) {
            return Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: Text("Grid item $index"),
            );
          },childCount: 20,),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
        ),
        MyHeader(headerText: "Header section 4"),
        SliverList(delegate: SliverChildListDelegate([
          Container(color: Colors.pink,height: 150.0,),
          Container(color: Colors.cyan,height: 150.0,),
          Container(color: Colors.indigo,height: 150.0,),
          Container(color: Colors.blue,height: 150.0,),
        ]),),
        SliverFillRemaining(),
      ],
    );
  }
}
