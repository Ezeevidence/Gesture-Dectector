import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: GestureDetectors(),
  ));

class GestureDetectors extends StatefulWidget {

  @override
  _GestureDetectorsState createState() => _GestureDetectorsState();
}

class _GestureDetectorsState extends State<GestureDetectors> {
  Color background = Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Gesture"),
      ),
      body: AnimatedContainer(
          color: background,
          duration: Duration(seconds: 3),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                GestureDetector(
                    onTap: () {
                      _showOnTapDialog(context);
                    },
                    child: RaisedButton(
                      child: Text("On Tap",
                      style: TextStyle(fontSize: 20, color: Colors.white),),
                    ),
                  ),


                GestureDetector(
                  onDoubleTap: () {
                    _showOnDoubleTapDialog(context);
                  },
                  child: RaisedButton(
                    child: Text("On Double Tap",
                      style: TextStyle(fontSize: 20, color: Colors.white),),
                  ),
                ),

                GestureDetector(
                  onLongPress: () {
                    _showOnLongPressDialog(context);
                  },
                  child: RaisedButton(
                    child: Text("On Long Press",
                      style: TextStyle(fontSize: 20, color: Colors.white),),
                  ),

                ),



              ],
        ),
          ),
      )
    );
  }

  void _showOnTapDialog(BuildContext context){

    showDialog(
        context: context,
        builder: (BuildContext context){
      return AlertDialog(
          title: new Text("Message"),
          content: new Text("You have Tapped. Click to close"),
          actions: [
            new FlatButton(
                onPressed: (){
                  setState(() {
                    background = Colors.blueAccent;
                  });
                  Navigator.of(context).pop();
                },
                child: Text("Close")),
          ],
        );
      },
    );
  }

  void _showOnDoubleTapDialog(BuildContext context){

    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: new Text("Message"),
          content: new Text("You have Double Tapped. Click to Close"),
          actions: [
            new FlatButton(
                onPressed: (){
                  setState(() {
                    background = Colors.grey[600];
                  });
                  Navigator.of(context).pop();
                },
                child: Text("Close")),
          ],
        );
      },
    );
  }

  void _showOnLongPressDialog(BuildContext context){

    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: new Text("Message"),
          content: new Text("You have Long Pressed. Click Close"),
          actions: [
            new FlatButton(
                onPressed: (){
                  setState(() {
                    background = Colors.greenAccent;
                  });
                  Navigator.of(context).pop();
                },
                child: Text("Close")),
          ],
        );
      },
    );
  }
}


