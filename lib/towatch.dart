import 'package:flutter/material.dart';

class ToWatch extends StatefulWidget {
  const ToWatch({super.key});

  @override
  State<ToWatch> createState() => _ToWatchState();
}

class _ToWatchState extends State<ToWatch> {
  List<String> ToDo = [];
  List<bool> isChecked = []; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 50, 50),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ToWatch",
          style: TextStyle(fontSize: 30, color: Colors.tealAccent),
        ),
        backgroundColor: const Color.fromARGB(255, 169, 50, 50),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Today's tasks",
                style: TextStyle(
                    color: const Color.fromARGB(255, 45, 151, 16), fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: ToDo.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    elevation: 5,
                    color: Colors.grey[850],
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text(
                        ToDo[index],
                        style: TextStyle(
                          fontSize: 18,
                          color: isChecked[index] ? Colors.green : Colors.white,
                          decoration: isChecked[index] ? TextDecoration.lineThrough : null,
                        ),
                      ),
                      leading: Checkbox(
                        value: isChecked[index],
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked[index] = value!;
                          });
                        },
                        activeColor:  Color.fromARGB(255, 45, 151, 16),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              String newTask = "";
              return AlertDialog(
                title: Text("Add New Task"),
                content: TextField(
                  onChanged: (value) {
                    newTask = value;
                  },
                  decoration: InputDecoration(
                    labelText: "Enter Task",
                    border: OutlineInputBorder(),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      if (newTask.isNotEmpty) {
                        setState(() {
                          ToDo.add(newTask);
                          isChecked.add(false); 
                        });
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text("Add", style: TextStyle(color: Colors.teal)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel", style: TextStyle(color: Colors.redAccent)),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 81, 156, 148),
      ),
    );
  }
}
