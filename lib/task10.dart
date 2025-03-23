import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final redWidth = 100.0;
    final redHeight = 50.0;
    final greenWidth = 100.0;
    final greenHeight = 100.0;
    final blueWidth = 100.0;
    final blueHeight = 150.0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("IntrinsicHeight Misol")),
        body: Center(
          child: IntrinsicHeight(
            child: OddiyXolatda(
              redWidth: redWidth,
              redHeight: redHeight,
              greenWidth: greenWidth,
              greenHeight: greenHeight,
              blueWidth: blueWidth,
              blueHeight: blueHeight,
            ),
          ),
        ),
      ),
    );
  }
}

class OddiyXolatda extends StatelessWidget {
  const OddiyXolatda({
    super.key,
    required this.redWidth,
    required this.redHeight,
    required this.greenWidth,
    required this.greenHeight,
    required this.blueWidth,
    required this.blueHeight,
  });

  final double redWidth;
  final double redHeight;
  final double greenWidth;
  final double greenHeight;
  final double blueWidth;
  final double blueHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.red,
          width: redWidth,
          height: redHeight,
          child: Center(child: Text("height $redHeight \n width $redWidth")),
        ), // 50px
        Container(
          color: Colors.green,
          width: greenWidth,
          height: greenHeight,
          child: Center(
            child: Text("height $greenHeight \n width $greenWidth"),
          ),
        ), // 50px
        Container(
          color: Colors.blue,
          width: blueWidth,
          height: blueHeight,
          child: Center(child: Text("height $blueHeight \n width $blueWidth")),
        ), //
        const SizedBox(
          width: 100,
          child: Text(
            "Qiymatlar bir xil chapda IntrinsicHeight class dan foydalandim  stretch qilmadim 2 - da stretch qildim",
          ),
        ),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.red,
                width: redWidth,
                height: redHeight,
                child: Center(
                  child: Text("height $redHeight \n width $redWidth"),
                ),
              ), // 50px
              Container(
                color: Colors.green,
                width: greenWidth,
                height: greenHeight,
                child: Center(
                  child: Text("height $greenHeight \n width $greenWidth"),
                ),
              ), // 50px
              Container(
                color: Colors.blue,
                width: blueWidth,
                height: blueHeight,
                child: Center(
                  child: Text("height $blueHeight \n width $blueWidth"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
