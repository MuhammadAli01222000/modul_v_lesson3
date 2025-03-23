import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  int selectedIndex2 = 0;
  int selectedIndex3 = 0;
int count=0;
int count2=1;
int count3=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("IndexedStack ")),
        body: Center(
          child: IndexedStack(
            index: selectedIndex,
            children: [
              GestureDetector(onTap: (){setState(() {
                count+=1;
              });},child: Container(color: Colors.red, width: 200, height: 200, child: Center(child: Text("Qo'shish  item= $count")))),
              GestureDetector(onTap: (){setState(() {
                count2*=2;
              });},child: Container(color: Colors.green, width: 200, height: 200, child:  Center(child: Text("Ko'paytirish  count x 2 =$count2")))),
              GestureDetector(onTap: (){setState(() {
                count3+=10;
              });},
              child: Container(color: Colors.blue, width: 200, height: 200, child:  Center(child: Text("Qo'shish+10 $count3")))),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: "Red"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: "Green"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "Blue"),
          ],
        ),
      ),
    );
  }
}
