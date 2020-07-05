import 'package:flutter/material.dart';
import 'package:the_basics/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Image capitalImage = Image.asset('assets/dubai-capital.png',
        fit: BoxFit.contain,
        height: 42,
        width: 120,
        alignment: FractionalOffset.center);
    return Container(
      height: 150,
      color: Color(0xffefebe9),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          capitalImage,
          FlatButton.icon(
            icon: Text('zcrfs32'),
            label: Icon(Icons.arrow_drop_down),
            shape: StadiumBorder(),
            onPressed: () {},
            color: Colors.white,
            hoverColor: Colors.white,
          ),
//          Text(
//            'Logout',
//            style: TextStyle(
//              color: Colors.white,
//            ),
//          )
        ],
      ),
    );
  }
}
