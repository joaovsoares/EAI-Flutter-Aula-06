import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  AppBar appBar(String titulo) {
    return AppBar(
        title: Text(titulo),
      );
  }

  Widget appBody() {
    return Center(child: Text('Texto'));
  }

  Widget navBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Config'),
      ],
    );
  }

  Widget drawer() {
    return Drawer(child: Center(child: Text('texto no drawer')),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title),
      drawer: drawer(),
      body: appBody(),
      bottomNavigationBar: navBar(),
    );
  }
}
