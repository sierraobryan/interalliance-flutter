import 'package:tech_olympics_todo_list/todo_item_type.dart';

class TodoItem {
  // DONE add title, description, id, order priority order, isDone, and (challenge) type
  String title;
  String description;
  TodoItemType type;
  int id;
  int priority;
  bool isDone;

  // DONE constructor
  TodoItem(
      this.id,
      this.title,
      this.description,
      this.type,
      this.priority,
      this.isDone
      );

  // Optional: named constructor
  // TodoItem({
  //   this.id,
  //   this.title,
  //   this.description,
  //   this.type,
  //   this.priority,
  //   this.isDone
  // });

  // DONE optional add a function to pretty print a item
  void printToDoItem() {
    print("Title: $title\n");
    print("Type: $type\n");
    print("Description: $description\n");
    print("Completed: $isDone\n");
  }

}