class Todo {
  final String id;
  final String title;
  final String desc;
  bool isCompleted;

  Todo(
      {required this.id,
      required this.title,
      required this.desc,
      this.isCompleted = false});
}

// Database Todo App
List<Todo> dataTodo = [
  Todo(
      id: DateTime.now().toString(),
      title: "Tugas Integrasi",
      desc: "Membuat Aplikasi Akademik"),
  Todo(
      id: DateTime.now().toString(),
      title: "Tugas Inovasi",
      desc: "Membuat produk digital"),
];
