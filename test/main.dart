// import 'package:flutter/material.dart';
// import 'package:todo/practiceui.dart';

// void main() {
//   runApp(TaskApp());
// }

// class TaskApp extends StatelessWidget {
//   const TaskApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false, home: Practice());
//   }
// }

// class TaskPage extends StatelessWidget {
//   const TaskPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButtonLocation:
//           FloatingActionButtonLocation.miniCenterDocked,

//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.shifting, // 👈 add this line
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.monochrome_photos),
//             label: 'moon',
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         shape: CircleBorder(),
//         backgroundColor: Colors.red,

//         onPressed: () {},
//         child: Icon(Icons.add),
//       ),
//       backgroundColor: Colors.white,
//       body: _buildBody(),
//     );
//   }

//   SafeArea _buildBody() {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(
//                     Icons.grid_view_rounded,
//                     size: 20,
//                     color: const Color.fromARGB(255, 205, 55, 55),
//                   ),
//                   Text(
//                     "My Tasks",
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.red,
//                     ),
//                   ),
//                   Icon(
//                     Icons.search,
//                     size: 20,
//                     color: const Color.fromARGB(255, 193, 41, 41),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 25),
//               Text(
//                 "Whats on your mind?",
//                 style: TextStyle(
//                   fontStyle: FontStyle.italic,
//                   color: Colors.red,
//                   fontSize: 16,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Container(
//                 padding: EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 53, 157, 34),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Row(
//                   children: [
//                     Icon(Icons.check_box, color: Colors.white),
//                     SizedBox(width: 10),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Pay Priyanshu",
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             "20 dollars for manga",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Icon(Icons.delete, color: Colors.white),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 15),
//               for (int i = 0; i < 10; i++) ...[
//                 Container(
//                   height: 60,
//                   margin: EdgeInsets.only(bottom: 15),
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//               ],
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
