import 'package:flutter/material.dart';
import 'package:meme_app/views/screens/about.dart';
import 'package:meme_app/views/screens/home.dart';
import 'package:meme_app/views/screens/seeting.dart';
import 'package:meme_app/views/widget/bar_bottom.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const List _screen = <Widget>[Home(), Setting()];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '/',
        routes: {
          '/about': (context) => const About(),
        },
        theme: ThemeData.dark(),
        home: Scaffold(
          body: _screen.elementAt(_selectedIndex),
          bottomNavigationBar: BarBottom(
              currentIndex: _selectedIndex, onItemTapped: _onItemTapped),
        ));
  }
}
