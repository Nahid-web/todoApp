import 'package:flutter/material.dart';
import 'package:todo_list/style.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ToDoPageState();
  }
}

class _ToDoPageState extends State<ToDoPage> {
  List taskList = ['Study', 'Play' , 'Shopping'];
  String? inputTask;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do App'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 70,
                    child: TextFormField(
                      onChanged: (value){
                        inputTask = value;
                      },
                      decoration: inputFieldStyle(),
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: sizedBox50(
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if(inputTask != ''){
                                taskList.add(inputTask);
                              }
                            });
                          },
                          style: buttonStyle(),
                          child:  const Text('Add'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 90,
                child: ListView.builder(
                  itemCount: taskList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: sizedBox50(
                        Row(
                          children: [
                            Expanded(
                              flex: 80,
                              child: Text(taskList[index]),
                            ),
                            Expanded(
                              flex: 20,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    taskList.removeAt(index);
                                  });

                                },
                                child: const Icon(Icons.delete),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
