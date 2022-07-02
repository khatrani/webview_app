import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottombarPage extends StatefulWidget {
  const BottombarPage({Key? key}) : super(key: key);

  @override
  State<BottombarPage> createState() => _BottombarPageState();
}

class _BottombarPageState extends State<BottombarPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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
        iconSize: 30,
        onTap: values,

        //     (index) {
        //   setState(() {
        //     _selectedIndex = index;
        //   });
        // },
      ),
    );
  }

  values(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
