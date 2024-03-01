import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> listOfItems = ["Task 1", "Task 2", "Task 3", "Task 4"];
  int taskCounter = 5; // Counter for additional tasks

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Board"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listOfItems.length,
        itemBuilder: (context, index) {
          DateTime now = DateTime.now();
          String formattedTime =
              "${now.hour}:${now.minute} ${now.hour >= 12 ? 'PM' : 'AM'}";

          // Formatting month name using DateFormat
          String monthName = DateFormat('MMMM').format(now);

          return Card(
            elevation: 3,
            color: const Color.fromARGB(255, 213, 222, 230),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listOfItems[index],
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 10), // Add some space between task and additional text
                  Text(
                    "My personal task management and planning solution for\nplanning my day, week & months",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10), // Add some space
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Time: $formattedTime  | Month: $monthName | Year: ${now.year}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            listOfItems.add("Task $taskCounter");
            taskCounter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}