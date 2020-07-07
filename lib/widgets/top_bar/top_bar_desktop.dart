import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_basics/constants/app_colors.dart';

class TopBarDesktop extends StatelessWidget implements PreferredSizeWidget {
  const TopBarDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Image titleImage = Image.asset('assets/gdrfa-logo.png',
        fit: BoxFit.contain,
        height: 62.7,
        width: 250,
        alignment: FractionalOffset.center);
    final Image capitalImage = Image.asset('assets/dubai-capital.png',
        fit: BoxFit.contain,
        height: 42,
        width: 120,
        alignment: FractionalOffset.center);
    return AppBar(
      textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      backgroundColor: Colors.white,
      title: Container(
        padding: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            titleImage,
//            SizedBox(width: 25),
            Text('My Establishments', style: TextStyle(fontSize: 16)),
//            SizedBox(width: 25),
            Text('Status Inquiry', style: TextStyle(fontSize: 16)),
//            SizedBox(width: 25),
            Text('Reports', style: TextStyle(fontSize: 16)),
//            SizedBox(width: 500),
            capitalImage,
//            SizedBox(width: 25),
            ButtonTheme(
              height: 27,
              minWidth: 2,
              child: RaisedButton(
                child: Text('عربى'),
                textColor: Colors.white,
                color: textColor,
                onPressed: () {},
                shape: StadiumBorder(),
              ),
            ),
//            SizedBox(width: 23),
            Container(
              width: 1,
              height: 30,
              color: Colors.grey,
            ),
//            SizedBox(width: 20),
            FlatButton.icon(
              icon: Text('zcrfs32'),
              label: Icon(Icons.arrow_drop_down),
              shape: StadiumBorder(),
              onPressed: () {},
              color: Colors.white,
              hoverColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(70);
}
