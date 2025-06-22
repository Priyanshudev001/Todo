import 'package:flutter/material.dart';
import 'dart:developer';

class Datastore extends StatelessWidget {
  final String title;
  final String? description;

  const Datastore({super.key, required this.title, this.description});

  @override
  Widget build(BuildContext context) {
    log("title is $title");
    log(description ?? "no");

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: const Text('Data'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 245, 184, 110),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 5),
              )
            ],
          ),
          child: Row(
            children: [
              Icon(Icons.check_circle, size: 30, color: Colors.white),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description ?? "No description available",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Icon(Icons.delete_outline, color: Colors.white, size: 26),
            ],
          ),
        ),
      ),
    );
  }
}
