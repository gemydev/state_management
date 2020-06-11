import 'package:flutter/material.dart';
import 'package:management_state/lifting_up/card.dart';
import 'package:management_state/lifting_up/task.dart';

class LiftingUi extends StatefulWidget {
  @override
  _LiftingUiState createState() => _LiftingUiState();
}

class _LiftingUiState extends State<LiftingUi> {

  List<Task> tasks = Task().getTasks();

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tasks ToDo" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 22),),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20 , left: 10 , right: 10),
          child: ListView.builder(
            itemCount: tasks.length,
              itemBuilder: (context , index){
              return TaskCard(
                task: tasks[index],
                removeItem: (){
                setState(() {
                  tasks.remove(tasks[index]);
                });
              },);
              }
          ),
        ),
      );
  }
}


