import 'package:flutter/material.dart';
import './addnotepage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('MyNoteKeeper')),
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        navigateDetail("Add Note");
        },
        tooltip: 'Add Note',
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: _count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
            ),
            title: Text(
              "expirement Title",
              style: titleStyle,
            ),
            subtitle: Text('Dumy text'),
            trailing: Icon(
              Icons.delete,
              color: Colors.deepPurple,
            ),
            onTap: () {
              print("It's good");
              navigateDetail("Edit Note");
            },
          ),
        );
      },
    );
  }

  void navigateDetail(String title) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AddNote(title);
    }));
  }
}
