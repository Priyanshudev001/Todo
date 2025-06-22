import 'package:flutter/material.dart';
import 'dart:developer';

class Datastore extends StatelessWidget {
  final String title;
  final String? description;
  const Datastore({super.key, required this.title, this.description}); //screen ma halna lai bhada 

  @override
  Widget build(BuildContext context) {
    log("title is $title");  // terminal ma herna  lai title ra decription
    log(description ?? "no"); // ?? descr bahyena bhaney no hunxa
    return Scaffold(
      appBar: AppBar(title: Text('data'), backgroundColor: Colors.amber),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(20),
          height: 100,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 30),

          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 189, 114, 49),
            borderRadius: BorderRadius.circular(20),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.check_box),

                  Column(
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        description ?? "no desc",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),

              Icon(Icons.delete_outline_sharp),
            ],
          ),
        ),
      ),
    );
  }
}
