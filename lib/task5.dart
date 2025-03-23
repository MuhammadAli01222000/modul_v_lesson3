import 'package:flutter/material.dart';

void main() => runApp(const Task5());

class Task5 extends StatefulWidget {
  const Task5({super.key});

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Task 5',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.all(20),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                    ),
                    delegate: SliverChildListDelegate([
                      TaskCard(
                        iconData: Icons.color_lens,
                        iconColor: Colors.pink,
                        iconBackgroundColor: Colors.pinkAccent,
                        title: "Design",
                        date: 'September 17 ',
                      ),
                      TaskCard(
                        iconData: Icons.monitor_rounded,
                        iconColor: Colors.blue,
                        iconBackgroundColor: Colors.blueAccent,
                        title: "Work",
                        date: 'September 20 ',
                      ),
                      TaskCard(
                        iconData: Icons.book,
                        iconColor: Colors.purple,
                        iconBackgroundColor: Colors.purpleAccent,
                        title: "Learning",
                        date: 'September 25 ',
                      ),
                      TaskCard(
                        iconData: Icons.shopping_bag_outlined,
                        iconColor: Colors.red,
                        iconBackgroundColor: Colors.redAccent,
                        title: "Shopping",
                        date: 'October 01',
                      ),
                      TaskCard(
                        iconData: Icons.dinner_dining_rounded,
                        iconColor: Colors.deepOrange,
                        iconBackgroundColor: Colors.deepOrangeAccent,
                        title: "Dinner",
                        date: 'October 02',
                      ),
                      TaskCard(
                        iconData: Icons.directions_run_rounded,
                        iconColor: Colors.green,
                        iconBackgroundColor: Colors.greenAccent,
                        title: "Fitness",
                        date: 'October 03',
                      ),
                      TaskCard(
                        iconData: Icons.move_down_rounded,
                        iconColor: Colors.deepPurple,
                        iconBackgroundColor: Colors.deepPurpleAccent,
                        title: "Movie",
                        date: 'October 04',
                      ),
                    ]),
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

class TaskCard extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final Color iconBackgroundColor;
  final String title;
  final String date;
  const TaskCard({
    super.key,
    required this.iconData,
    required this.iconColor,
    required this.iconBackgroundColor,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: iconBackgroundColor.withOpacity(0.175),
            child: Icon(iconData, size: 40, color: iconColor),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            date,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
