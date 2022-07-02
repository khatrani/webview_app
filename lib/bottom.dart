import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
                // title: Text('Home'),
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search),
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
              backgroundColor: Colors.blue,
            ),
          ],
          // type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
          ),
    );
  }
}
