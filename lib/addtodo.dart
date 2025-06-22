import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:todo/datastore.dart';

class Addtodo extends StatefulWidget {
  const Addtodo({super.key});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  // Key used to validate the form inputs
  final formkey = GlobalKey<FormState>();

  // Controllers to get text input from user
  final title = TextEditingController();
  final description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set a light background color for the screen
      backgroundColor: const Color(0xFFE9F5F2),

      // Top AppBar with title
      appBar: AppBar(
        backgroundColor: Colors.green.shade700, // Set app bar color
        elevation: 2,
        centerTitle: true,
        title: const Text(
          "Yatri Form", // Title shown in the app bar
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),

      // Form UI inside scrollable view
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formkey, // Attach the form key to this form
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Instruction text
              const Text(
                "Enter your todo details below:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20), // Spacing
              // Title input field
              TextFormField(
                controller: title, // Connect input with controller
                decoration: const InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(), // Show box border
                  prefixIcon: Icon(Icons.title),
                ),
                // Validator ensures title is not empty
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Title is required"; // Error shown if empty
                  }
                  return null; // No error
                },
              ),
              const SizedBox(height: 16), // Spacing
              // Description input field
              TextFormField(
                controller: description,
                maxLines: 4, // Allows multiple lines of text
                decoration: const InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.description),
                ),
              ),
              const SizedBox(height: 24),

              // Submit button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700, // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                  ),
                  // When the button is pressed
                  onPressed: () {
                    // Check if form is valid using validator
                    if (formkey.currentState?.validate() == true) {
                      // Print values to debug console
                      log("Title: ${title.text}");
                      log("Description: ${description.text}");

                      // Navigate to the next page (Datastore screen)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  Datastore(title: title.text,description: description.text,),
                        ),
                      );
                    }
                  },
                  icon: const Icon(Icons.send, color: Colors.white),
                  label: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
