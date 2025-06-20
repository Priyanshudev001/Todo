import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> hi = ["hello man", "hdf", "dfdfdf", "fdfdf", "blaaaa"];
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.grid_view_rounded),
        title: Column(
          children: [
            Text(
              "Blue",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              "Young Kai",

              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [Icon(Icons.search)],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Blue",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: hi.length,
                itemBuilder:
                    (context, index) => Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 91, 194, 246),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      padding: EdgeInsets.all(20),
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.check_box),
                          Text(hi[index]),
                          Icon(Icons.delete),
                        ],
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.nightlight_outlined),
            label: "Night",
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: const Color.fromARGB(255, 191, 217, 242),
    );
  }
}
