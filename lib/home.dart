import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 14, 14),
        foregroundColor: const Color.fromARGB(255, 255, 201, 7),
        title: Text("Student Directory"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 15, 57, 128),
        foregroundColor: const Color.fromARGB(255, 156, 137, 137),
        onPressed: () {}, child: Icon(Icons.add),
      ),
    );
  }
}
