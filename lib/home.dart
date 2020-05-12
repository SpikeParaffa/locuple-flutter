
import 'package:flutter/material.dart';
import 'package:locuple/screens/local.dart';
import 'package:locuple/screens/near.dart';
import 'package:locuple/screens/place.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [Local(), Place(), Near()];
  
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onTap,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.local_play),
            title: Text('Local'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.place),
            title: Text('Place'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            title: Text('Near'),
          ),
        ],
      ),
    );
  }
    
}