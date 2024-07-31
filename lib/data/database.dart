import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  // List todo list
  List ToDoList = [];
  // reference the hive box
  final _myBox = Hive.box('mybox');

  //run this method if this is firstime opening this app
  void createInitialData() {
    ToDoList = [
      ["Make an tutorial", false], 
      ["buat Renungan", false],
    ];
  }
  
  // load the data from the database
  void loadData() {
    ToDoList = _myBox.get("TODOLIST");
  }

  //Update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", ToDoList);
  }


}