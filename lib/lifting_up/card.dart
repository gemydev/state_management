import 'package:flutter/material.dart';
import 'package:management_state/lifting_up/task.dart';

class TaskCard extends StatelessWidget {

  final Task task;
  const TaskCard({this.task , this.removeItem});

  final Function removeItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Colors.black, width: 0.3),
      ),
      child: ListTile(
        title: Text(task.name , style: TextStyle(fontWeight: FontWeight.w700),) ,
        subtitle: Text(task.description , style: TextStyle(fontSize: 14),),
        trailing: IconButton(
            icon: Icon(Icons.clear , color: Colors.red,),
            onPressed: (){
              removeItem();
            }
        ),
      ),
    );
  }
}
