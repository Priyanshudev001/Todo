import 'package:flutter/material.dart';

class Addtodo extends StatelessWidget {
  const Addtodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 221, 211),
      appBar: AppBar(
        backgroundColor: Colors.green,
        // leading: Icon(Icons.grid_view_rounded, color: Colors.white),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Yatri",

              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
