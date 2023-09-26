import 'package:flutter/material.dart';
import 'package:todo_list/ToDoPage.dart';

void main() {
  runApp(const ToDoApp());
}
class ToDoApp extends StatelessWidget{
  const ToDoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ToDoPage(),
    );
  }
}