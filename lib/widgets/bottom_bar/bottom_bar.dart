import 'package:flutter/material.dart';
import 'package:the_basics/constants/app_colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 8)]),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 3.0,
        child: Container(
          height: 60,
//          padding: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
//              SizedBox(width: 250),
              FlatButton(
                child: Text(
                  'Close',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                shape: StadiumBorder(),
                textColor: textColor,
                hoverColor: Colors.white,
                onPressed: () {},
              ),
//              SizedBox(width: 580),
              OutlineButton(
                borderSide: BorderSide(
                    color: textColor, style: BorderStyle.solid, width: 1),
                shape: StadiumBorder(),
                child: Text('Save'),
                highlightedBorderColor: textColor,
                highlightColor: Colors.white,
                textColor: textColor,
                onPressed: () {},
              ),
//              SizedBox(width: 20),
              RaisedButton(
                child: Text('Continue'),
                textColor: Colors.white,
                color: textColor,
                onPressed: () {},
                shape: StadiumBorder(),
              ),
//              SizedBox(width: 20),
              RaisedButton.icon(
                icon: Text('Actions'),
                label: Icon(Icons.arrow_drop_up),
                shape: StadiumBorder(),
                onPressed: () {},
                color: textColor,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
