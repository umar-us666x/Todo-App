import 'package:flutter/material.dart';
import 'package:todo_app/screen/add_todo.dart';
import 'package:todo_app/screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Roboto",
      ),

      // Routes Tampilan
      routes: {
        'homepage': (context) => HomePage(),
        'add_todo': (context) => AddTodo(),
      },
      initialRoute: 'homepage',
    );
  }
}
