import 'package:flutter/material.dart';
void main ()=>runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Expanded(
        flex: 1,
        child: Row(
          children: [
            const Icon(Icons.message),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Title', style: Theme.of(context).textTheme.headlineMedium),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed '
                      'do eiusmod tempor incididunt ut labore et dolore magna '
                      'aliqua. Ut enim ad minim veniam, quis nostrud '
                      'exercitation ullamco laboris nisi ut aliquip ex ea '
                      'commodo consequat.',
                ),
              ],
            ),
        ],
        
        ),
      )
    );
  }
}
