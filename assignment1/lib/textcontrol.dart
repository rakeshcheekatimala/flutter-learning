import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function onPressHandler, onResetHandler;
  TextControl(this.onPressHandler, this.onResetHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
          RaisedButton(
            onPressed: onPressHandler,
            child: Text('Press to Change'),
          ),
          RaisedButton(onPressed: onResetHandler, child: Text('Reset'))
        ]));
  }
}

/*
child: RaisedButton(
            onPressed: onPressHandler, child: Text('Press to Change')));
  }


*/
