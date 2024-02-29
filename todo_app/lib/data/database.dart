import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // refference the box
  final _myBox = Hive.box("mybox");

  //run this method if this  is the first time ever opening the app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
 }

 //load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");

  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);

  }

}
