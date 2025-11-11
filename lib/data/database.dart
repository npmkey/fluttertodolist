import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference the hive box
  final _myBox = Hive.box('mybox');

  //create initial data
  void createInitialData() {
    toDoList = [
      ['Make tutorial', false],
      ['Do exercise', true],
      ['Build app', false],
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}