import 'package:flutter/material.dart';
import 'package:tech_olympics_todo_list/todo_item.dart';

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

  // TODO function to create a list of TO todos
  void getTechOlympicTodos() {

  }

  // TODO function to count number of todo items
  void getTotalNumberTechOlympicTodos() {

  }

  // TODO function to count number of completed todo items
  void getNumberOfCompletedTechOlympicTodos() {

  }

  // challenge: function to sort todo items by priority
  void sortToDosByPriority() {

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
