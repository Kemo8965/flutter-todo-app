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
        drawer: Drawer(),

        appBar: AppBar(
          title: const Text('Litmas Dairy'),
          backgroundColor: Color(0xFF363f93),
          toolbarHeight: 90,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(80),
          )),
          elevation: 14,
          actions: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        blurRadius: 7, spreadRadius: 3, color: Colors.pink)
                  ], shape: BoxShape.circle, color: Colors.pink.shade400),
                  child: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(
                  width: 26,
                )
              ],
            )
          ],
        ),

        // drawer: NavigationBar,
        body: const MyCardWidget(),

        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
              backgroundColor: Color(0xFF363f93)),
          BottomNavigationBarItem(
              label: 'Herd',
              icon: Icon(Icons.inventory),
              backgroundColor: Color(0xFF363f93)),
          BottomNavigationBarItem(
              label: 'Reports',
              icon: Icon(Icons.library_books),
              backgroundColor: Color(0xFF363f93)),
        ]),
      ),
    );
  }
}

class MyCardWidget2 extends StatelessWidget {
  const MyCardWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              color: Color(0xFF363f93)),
          child: Stack(
            children: [],
          ),
        ),
      ],
    );
  }
}

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
