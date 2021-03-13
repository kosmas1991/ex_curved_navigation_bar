import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curved Navigation Bar'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Curved Navigation Bar Implementation')
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.camera),
          Icon(Icons.check),
          Icon(Icons.add),
          Icon(Icons.person),
          Icon(Icons.settings)
        ],
        height: 45,
        index: 2,
        onTap: (value) {
          debugPrint(value.toString()); //console print the selected icon
        },
        animationDuration: Duration(milliseconds: 200),
      ),
    );
  }
}
