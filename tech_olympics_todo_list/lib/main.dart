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

  List<TodoItem> _techOlympicTodos = [
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
        "Scheduled for 5 pm on Feb 4th",
        TodoItemType.share,
        3,
        false
    )
  ];

  void _updateItem(TodoItem item, bool value) {
    setState(() {
      _techOlympicTodos.where((element) => element.id == item.id).first.isDone = value;
    });
  }

  // DONE function to create a list of TO todos
  List<TodoItem> getTechOlympicTodos() {
    return _techOlympicTodos;
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCounterDoneColumn(),
                buildCounterTotalColumn()
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
            ),
            for (TodoItem item in getTechOlympicTodos())
              buildTodoItemWidget(item),
          ],
        ),
      ),
    );
  }

  // DONE optional build a widget that displays the total number of completed todos
  Widget buildCounterDoneColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          getNumberOfCompletedTechOlympicTodos(getTechOlympicTodos()).toString(),
          style: TextStyle(
            fontSize: 24
          ),
        ),
        Text("Completed")
      ],
    );
  }

  // DONE optional build a widget that displays the total number of todos
  Widget buildCounterTotalColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          getTotalNumberTechOlympicTodos(getTechOlympicTodos()).toString(),
          style: TextStyle(
              fontSize: 24
          ),
        ),
        Text("Total")
      ],
    );
  }

  // DONE build a widget that holds one item
  // should include title, content, and a checkbox indicating done status
  Widget buildTodoItemWidget(TodoItem item) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: _getIcon(item.type),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14
                ),
              ),
              Text(item.description)
            ], 
          ),
          Spacer(),
          Checkbox(
              value: item.isDone,
              onChanged: (value) {
                _updateItem(item, value);
              },
          )
        ],
      ),
    );
  }

  // DONE challenge function that returns icon based on type
  Icon _getIcon(TodoItemType type) {
    switch(type) {
      case TodoItemType.prep:
        return Icon(Icons.edit);
        break;
      case TodoItemType.practice:
        return Icon(Icons.volume_up_sharp);
        break;
      default:
        return Icon(Icons.share);
    }
  }
}
