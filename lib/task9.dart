import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("ConstrainedBox ")),
        body: Center(
          child: ConstrainedBox(
            constraints:  BoxConstraints(
              minWidth: 150,
              maxWidth: 300,
              minHeight: 50,
              maxHeight: 150,
            ),
            child: Container(
              color: Colors.blueAccent,
              child:  Center(child: Text("Size width ${size.width}  height ${size.height} ", textAlign: TextAlign.center)),
            ),
          ),
        ),
      ),
    );
  }
}
