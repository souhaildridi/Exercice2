import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldSample(),
    );
  }
}

class ScaffoldSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Dev"),
      ),
      body: Center(
        child: Text("Welcome to Flutter Dev"),
      ),



      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        elevation: 10,
      ),


      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("My First Drawer"),
            ),
            ListTile(
              title: Text("Item1"),
            ),
            ListTile(
              title: Text("Item2"),
            ),
          ],
        ),
      ),



      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: (int index) {},
      ),
    );
  }
}
