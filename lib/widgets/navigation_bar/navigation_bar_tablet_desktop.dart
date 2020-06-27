import 'package:flutter/material.dart';
import 'package:the_basics/routing/router.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Application Details', Routes.home),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Documents', Routes.page2),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Fees & Payments', Routes.about),
            ],
          )
        ],
      ),
    );
  }
}