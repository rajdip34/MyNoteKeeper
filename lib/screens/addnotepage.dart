import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  String appBarTitle;
  AddNote(this.appBarTitle);
  @override
  State<StatefulWidget> createState() {
    return _AddNoteState(this.appBarTitle);
  }
}

class _AddNoteState extends State<AddNote> {
  String appBarTitle;
  _AddNoteState(this.appBarTitle);
  static var _valuofWork = ['Hight', 'Low'];
  TextEditingController titleController =  TextEditingController();
  TextEditingController descriptionController =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return WillPopScope(
      onWillPop: (){
        moveToLastScreen();
      },
    child:Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
        onPressed: (){
          moveToLastScreen();
        },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        // first elimant
        child: ListView(
          children: <Widget>[
            ListTile(
              title: DropdownButton(
                items: _valuofWork.map((String dorpDownItem) {
                  return DropdownMenuItem<String>(
                    value: dorpDownItem,
                    child: Text(dorpDownItem),
                  );
                }).toList(),
                style: textStyle,
                value: 'Low',
                onChanged: (userSelectValu) {
                  setState(() {
                    print("it's work $userSelectValu");
                  });
                },
              ),
            ),
            //secand elimant
            Padding(
              padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (valu){
                  print("it's work");

                },
                decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              ),
            ),
            // Thard elimant
            Padding(
              padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (valu){
                  print("it's work");

                },
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              ),
            ),
            // fourth elimant
            Padding(
              padding: EdgeInsets.only(top: 15.0 ,bottom: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: (){
                        print("now it's also work");
                        

                      },
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Save',
                        textScaleFactor: 1.5,
                      ),
                    ),
                  ),
                  Container(width: 5.0,),
                  Expanded(
                    child: RaisedButton(
                      onPressed: (){
                        print("now it's also work");
                        

                      },
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Delete',
                        textScaleFactor: 1.5,
                      ),
                    ),
                  ),
                ],
              ),

            ),


          ],
        ),
      ),
    )
    );
  }
  void moveToLastScreen(){
    Navigator.pop(context);

  }
}
