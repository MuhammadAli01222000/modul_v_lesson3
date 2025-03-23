import 'package:flutter/material.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

void main() => runApp(const Task7());

class Task7 extends StatefulWidget {
  const Task7({super.key});

  @override
  State<Task7> createState() => _Task7State();
}

class _Task7State extends State<Task7> {
  final _listController = ListController();
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Package: super_sliver_list  Task 7')),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardButton(title: "Section 1", onTap: () => animateToItem(299)),
                CardButton(title: "Section 2", onTap: () => animateToItem(599)),
                CardButton(title: "Section 3", onTap: () => animateToItem(899)),
              ],
            ),
            SizedBox(height: 10,),
            Flexible(child: SuperListView.builder(itemCount:  900,listController: _listController,controller: _controller,
              itemBuilder: (context ,index){
              return ListTile(
                leading: CircleAvatar(
                  child: Icon(switch (index~/ 300){
                    0=>Icons.looks_one_rounded,
                  1=>Icons.looks_two_rounded,
                  _=>Icons.looks_3_rounded,
                  }),
                ),title: Text("Item ${index +1}"),
              );
            },))
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          jumpToItem(0);
          
        },child: Icon(Icons.arrow_upward),),
      ),
    );
  }

  void jumpToItem(int index) => _listController.jumpToItem(
    index: index,
    scrollController: _controller,
    alignment: 0,
  );
  void animateToItem(int index) => _listController.animateToItem(
    index: index,
    scrollController: _controller,
    alignment: 0,
    duration: (estimatedDistance) => Duration(seconds: 1),
    curve: (estimatedDistance) => Curves.easeInOut,
  );
}

class CardButton extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  const CardButton({super.key, this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(title),
      ),
    );
  }
}
