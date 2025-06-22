import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> lyrics = [
      "Your morning eyes, I could stare like watching stars",
      "I could walk you by, and I’ll tell without a thought",
      "You’ll be mine, would you mind if I took your hand tonight",
      "Know you’re all that I want is life",
      "I’ll imagine we fell in love",
      "I’ll nap under moonlight skies with you",
      "I think I’ll picture us, you with the waves",
      "The ocean’s colors on your face",
      "Will you be forever with me?",
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(116, 78, 138, 175),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 108, 181),
        leading: Icon(Icons.grid_view_rounded, color: Colors.white),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Blue",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Text(
              "Young Kai",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
          ],
        ),
        actions: [Icon(Icons.search, color: Colors.white), SizedBox(width: 10)],
        elevation: 12,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'image.jpg',
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Lyrics",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 20),
              ...lyrics.map(
                (line) => Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.lightBlueAccent, Colors.blue.shade300],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.4),
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Text(
                    line,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      height: 1.4,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 11, 94, 161),
        unselectedItemColor: const Color.fromARGB(195, 169, 18, 18),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Liked"),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: const Color.fromARGB(205, 36, 28, 112),
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
