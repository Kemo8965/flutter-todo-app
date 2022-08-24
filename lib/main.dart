import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Litmas Dairy'),
          backgroundColor: Color.fromARGB(255, 89, 177, 143),
        ),

        // drawer: NavigationBar,
        body: const Text('Body'),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Herd', icon: Icon(Icons.inventory)),
          BottomNavigationBarItem(
              label: 'Reports', icon: Icon(Icons.library_books)),
        ]),
      ),
    );
  }
}
