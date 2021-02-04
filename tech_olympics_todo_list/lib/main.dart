import 'package:flutter/material.dart';
import 'package:tech_olympics_todo_list/todo_item.dart';
import 'package:tech_olympics_todo_list/todo_item_type.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Olympic Todo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Tech Olympic Todo List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<TodoItem> _techOlympicTodos;

  // DONE function to create a list of TO todos
  List<TodoItem> getTechOlympicTodos() {
    return [
      new TodoItem(
          1,
          "Write Slides",
          "Put together slides on Flutter and Dart",
          TodoItemType.prep,
          1,
          true
      ),
      new TodoItem(
          2,
          "Practice talk",
          "Run through full slide deck and time",
          TodoItemType.practice,
          2,
          true
      ),
      new TodoItem(
          3,
          "Give talk",
          "Give talk at Tech Olympics at 5 pm on Feb 4th",
          TodoItemType.share,
          3,
          false
      )
    ];
  }

  // DONE function to count number of todo items
  int getTotalNumberTechOlympicTodos(List<TodoItem> todoList) {
    return todoList.length;
  }

  // DONE function to count number of completed todo items
  int getNumberOfCompletedTechOlympicTodos(List<TodoItem> todoList) {
    return todoList.where((element) => element.isDone).length;
  }

  // DONE optional function to sort todo items by priority
  List<TodoItem> sortToDosByPriority(List<TodoItem> todoList) {
    todoList.sort((a, b) => a.priority.compareTo(b.priority));
    return todoList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have no todos on your list',
            ),
          ],
        ),
      ),
    );
  }

  // optional build a widget that displays the total number of completed todos
  void buildCounterDoneColumn() {

  }

  // optional build a widget that displays the total number of todos
  void buildCounterTotalColumn() {

  }

  // TODO build a widget that holds one todo item
  // should include title, content, and a checkbox indicating done status
  void buildTodoItemWidget() {

  }

  // challenge function that returns icon based on type
  void _getIcon() {

  }
  
}
