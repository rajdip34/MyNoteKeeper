import 'package:flutter/material.dart';
import './screens/homepage.dart';
import './screens/addnotepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyNoteKeeper',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.indigo,
        brightness: Brightness.dark,
      ),
    );
  }
}
