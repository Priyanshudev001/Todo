import 'dart:developer';

import 'package:flutter/material.dart';

class Addtodo extends StatefulWidget {
  const Addtodo({super.key});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  final formkey = GlobalKey<FormState>();
  final title = TextEditingController();
  final description = TextEditingController();
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                controller: title,
                decoration: InputDecoration(label: Text('Title')),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Title is required";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: description,
                maxLines: 3,
                decoration: InputDecoration(label: Text("description")),
              ),

              SizedBox(height: 12),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState?.validate() == true) {
                      log('j');
                    }
                  },
                  child: Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
