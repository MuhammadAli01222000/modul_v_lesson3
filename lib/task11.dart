import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Card(color: Colors.red),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Card(color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              //    mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Card(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Spacer ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Spacer >>> 3 ta bor",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Spacer(),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
