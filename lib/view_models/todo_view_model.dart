import 'package:flutter/material.dart';
import '../models/todo_item.dart';

class TodoViewModel with ChangeNotifier {
  final List<TodoItem> _todos = [];

  List<TodoItem> get todos => _todos;

  void addTodo(String title) {
    _todos.add(TodoItem(title: title));
    notifyListeners();
  }

  void toggleCompletion(int index) {
    _todos[index].isCompleted = !_todos[index].isCompleted;
    notifyListeners();
  }

  void deleteTodo(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
