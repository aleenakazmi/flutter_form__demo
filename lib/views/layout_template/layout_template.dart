import 'package:flutter/material.dart';
import 'package:the_basics/constants/app_colors.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/routing/router.dart';
import 'package:the_basics/services/navigation_service.dart';
import 'package:the_basics/widgets/bottom_bar/bottom_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:the_basics/widgets/top_bar/top_bar.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        appBar: TopBar(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: textColor,
          mini: true,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
          tooltip: 'Click to enter feedback',
        ),
        bottomNavigationBar: BottomBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 500),
              color: Color(0xffefebe9),
              padding: constraints.maxWidth < 500
                  ? EdgeInsets.zero
                  : EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  constraints: BoxConstraints(
                    maxWidth: 1000,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffefebe9),//Color(0xffefebe9),//Color(0xb3ffffff)
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      //NavigationBar(),
                      Expanded(
                        child: Navigator(
                          key: locator<NavigationService>().navigatorKey,
                          onGenerateRoute: generateRoute,
                          initialRoute: Routes.home,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
