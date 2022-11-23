import 'package:flutter/material.dart';
import 'package:flutter_todo_app/people/people.dart';

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
        body: const MyPeopleProfie(),

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

class MyPeopleProfie extends StatelessWidget {
  const MyPeopleProfie({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return WideLayout();
      } else {
        return NarrowLayout();
      }

      return Center(
        child: ListView(
          children: <Widget>[
            for (var person in people)
              ListTile(
                leading: Image.network(person.picture),
                title: Text(person.name),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => Scaffold(
                        appBar: AppBar(
                          title: const Text('Litmas Client Details'),
                          backgroundColor: Color(0xFF363f93),
                          toolbarHeight: 90,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(80),
                          )),
                        ),
                        body: PersonDetail(person))))),
              )
          ],
        ),
      );
    });
  }
}

class WideLayout extends StatelessWidget {
  const WideLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: NarrowLayout(),
      color: Colors.amberAccent,
    );
  }
}

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          for (var person in people)
            ListTile(
              leading: Image.network(person.picture),
              title: Text(person.name),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => Scaffold(
                      appBar: AppBar(
                        title: const Text('Litmas Client Details'),
                        backgroundColor: Color(0xFF363f93),
                        toolbarHeight: 90,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(80),
                        )),
                      ),
                      body: PersonDetail(person))))),
            )
        ],
      ),
    );
  }
}

class PersonDetail extends StatelessWidget {
  final Person person;

  const PersonDetail(this.person);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(person.name),
        Text(person.phone),
        Text(person.email),
        Text(person.address),
        Text(person.about)
      ],
    ));
  }
}
