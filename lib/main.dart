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
        body: const MyCardWidget3(),

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

class MyCardWidget3 extends StatelessWidget {
  const MyCardWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 220,
          child: Stack(children: [
            Positioned(
              top: 35,
              left: 20,
              child: Material(
                child: Container(
                    height: 180.0,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(2.8),
                      // ignore: unnecessary_new
                    )),
              ),
            ),
            Positioned(
                top: 10,
                left: 30,
                child: Card(
                  elevation: 10.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/cows2.jpg"))),
                  ),
                )),
            Positioned(
                top: 60,
                left: 200,
                child: SizedBox(
                  height: 150,
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Bulls",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        color: Colors.blue,
                        indent: 0,
                        endIndent: 60,
                        thickness: 2,
                      ),
                      const Text(
                        "Manage your herd",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ))
          ]),
        ),
        SizedBox(
          height: 220,
          child: Stack(children: [
            Positioned(
              top: 35,
              left: 20,
              child: Material(
                child: Container(
                    height: 180.0,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.yellow[100],
                      borderRadius: BorderRadius.circular(2.8),
                      // ignore: unnecessary_new
                    )),
              ),
            ),
            Positioned(
                top: 10,
                left: 30,
                child: Card(
                  elevation: 10.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/cows3.jpg"))),
                  ),
                )),
            Positioned(
                top: 60,
                left: 200,
                child: SizedBox(
                  height: 150,
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Cows",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        color: Colors.blue,
                        indent: 0,
                        endIndent: 60,
                        thickness: 2,
                      ),
                      const Text(
                        "Manage your herd",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ))
          ]),
        ),
        SizedBox(
          height: 220,
          child: Stack(children: [
            Positioned(
              top: 35,
              left: 20,
              child: Material(
                child: Container(
                    height: 180.0,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(2.8),
                      // ignore: unnecessary_new
                    )),
              ),
            ),
            Positioned(
                top: 10,
                left: 30,
                child: Card(
                  elevation: 10.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/cows2.jpg"))),
                  ),
                )),
            Positioned(
                top: 60,
                left: 200,
                child: SizedBox(
                  height: 150,
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Herd",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        color: Colors.blue,
                        indent: 0,
                        endIndent: 60,
                        thickness: 2,
                      ),
                      const Text(
                        "Manage your herd",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ))
          ]),
        )
      ],
    );
  }
}
