import 'package:tech_olympics_todo_list/todo_item_type.dart';

class TodoItem {
  // DONE add title, description, type, order priority order, and isDone
  String title;
  String description;
  TodoItemType type;
  int priority;
  bool isDone;

  TodoItem(
      this.title,
      this.description,
      this.type,
      this.priority,
      this.isDone
      );

  // DONE add a function to pretty print a item
  void printToDoItem() {
    print("Title: $title\n");
    print("Type: $type\n");
    print("Description: $description\n");
    print("Completed: $isDone\n");
  }
}