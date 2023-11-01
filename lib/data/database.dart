import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  final _MyBox = Hive.box('MyBox');

  void createInitialData() {
    toDoList = [
      ["My Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // to load data
  void loadData() {
    toDoList = _MyBox.get("TODOLIST");
  }

  //to update data
  void updataDatabase() {
    _MyBox.put("TODOLIST", toDoList);
  }
}
