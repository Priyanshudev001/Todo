import 'package:flutter/material.dart';

class Datastore extends StatelessWidget {

  const Datastore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('data'), backgroundColor: Colors.amber),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(20),
          height: 70,
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
                  Text(
                    'gff',
                    style: TextStyle(fontSize: 18, color: Colors.white),
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
