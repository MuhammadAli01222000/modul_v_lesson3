import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverResizingHeader(
                minHeight: 30,
                maxHeight: 205,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) =>  SizedBox(
                      width: 300,
                      height: 50,
                      child: Card(
                        color: Colors.primaries[index % Colors.primaries.length],
                      ),),
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliverResizingHeader extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;

  SliverResizingHeader({required this.minHeight, required this.maxHeight});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    double currentHeight = math.max(minHeight, maxHeight - shrinkOffset);

    return Container(
      height: currentHeight,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        "Sliver Resizing Header",
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
