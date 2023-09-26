import 'dart:ffi';

import 'package:flutter/material.dart';

OutlineInputBorder borderStyle(color){
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(10),
  );
}

InputDecoration inputFieldStyle() {
  return InputDecoration(
    labelText: 'To do',
    hintText: 'your task name',
    prefixIcon: const Icon(Icons.task),
    focusedBorder: borderStyle(Colors.green),
    enabledBorder: borderStyle(Colors.grey),
  );
}

ButtonStyle buttonStyle(){
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

SizedBox sizedBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: child,
  );
}