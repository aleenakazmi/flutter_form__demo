import 'package:flutter/material.dart';
import 'package:the_basics/routing/router.dart';
import 'package:the_basics/widgets/navigation_drawer/drawer_item.dart';
import 'package:the_basics/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16,),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('My Establishments', Icons.home, Routes.home),
          DrawerItem('Status Inquiry', Icons.pages, Routes.page2),
          DrawerItem('Reports', Icons.help, Routes.about),
        ],
      ),
    );
  }
}
