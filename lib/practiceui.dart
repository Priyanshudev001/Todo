import 'package:flutter/material.dart';
import 'package:todo/addtodo.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> lyrics = [
      "Name",
      "Address",
      "Number",
      "Age",
      "Sex",
      "Citizenship number",
      "Father name",
      "Mother name",
    ];
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        leading: Icon(Icons.grid_view_rounded),
        title: Text(
          "Safari Yatri",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: [Icon(Icons.search)],
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                "What's on your mind ?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),

            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.red,
            //     borderRadius: BorderRadius.circular(12),
            //   ),
            //   margin: EdgeInsets.symmetric(horizontal: 20),
            //   padding: EdgeInsets.all(20),
            //   height: 100,
            //   width: double.infinity,

            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         spacing: 10,
            //         children: [
            //           Icon(Icons.check_box),

            //           Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             spacing: 10,
            //             children: [
            //               Text('data'),
            //               Text('data'),
            //               // Container(height: 50, width: 50, color: Colors.white),
            //               // Container(height: 50, width: 50, color: Colors.white),
            //               // Container(height: 50, width: 50, color: Colors.white),
            //             ],
            //           ),
            //           // SizedBox(width: 10),
            //         ],
            //       ),
            //       Icon(Icons.delete),
            //     ],
            //   ),
            // ),
            Expanded(
              child: ListView.builder(
                //ListView => scrollable garxa ra dekahunxa list ma bhako kura
                itemCount: lyrics.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 70,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 30),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.check_box),
                              Text(lyrics[index]),
                            ],
                          ),

                          Icon(Icons.delete_outline_sharp),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: const Color.fromARGB(255, 3, 4, 1),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.nightlight), label: "Night"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: (Colors.green),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Addtodo()),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
