import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';

class AddTodo extends StatelessWidget {
  const AddTodo({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerTitle = TextEditingController();
    TextEditingController controllerDesc = TextEditingController();

    AppBar myAppbar = AppBar(
      title: Text("Add Todo"),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    );

    double heightBody = MediaQuery.of(context).size.height -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    double widthBody = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controllerTitle.text.length != 0 ||
              controllerDesc.text.length != 0) {
            dataTodo.add(
              Todo(
                id: DateTime.now().toString(),
                title: controllerTitle.text.length == 0
                    ? "No Title"
                    : controllerTitle.text,
                desc: controllerDesc.text.length == 0
                    ? "No Description"
                    : controllerDesc.text,
              ),
            );
          }
        },
        child: Icon(Icons.add_task),
      ),
      appBar: myAppbar,
      body: Container(
        padding: EdgeInsets.all(20),
        width: widthBody,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white12),
              child: TextField(
                controller: controllerTitle,
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: "Title",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: heightBody * 0.05,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white12),
              child: TextField(
                controller: controllerDesc,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: "Description",
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
