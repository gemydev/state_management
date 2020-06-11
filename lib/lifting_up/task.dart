class Task{

  String name ;
  String description;
  Task({this.name, this.description});

  List<Task> getTasks(){
    List<Task> tasks;
    tasks = [
      Task(name:"studying" , description:"Mathematics course review"),
      Task(name:"watching a football match" ,description: "Liverpool VS Manchester City"),
      Task(name:"Visit my uncle" ,description: ""),
      Task(name:"Book a ticket" , description:"From the pyramids company"),
    ];
    return tasks;
  }

}
