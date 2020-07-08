import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/constants/app_colors.dart';

import 'application_details.dart';

class FormDetails extends StatelessWidget {
  const FormDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.left;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 35
                : 60;
        double tilewidth =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 150
                : 300;
        int segmentedControlGroupValue = 0;
//        final Map<int, Widget> myTabs = const <int, Widget>{
//          0: Padding(
//            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 6),
//            child: Text(
//              "Application Details",
//              style: TextStyle(fontSize: 14, color: textColor),
//            ),
//          ),
//          1: Padding(
//            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 6),
//            child: Text(
//              "Documents",
//              style: TextStyle(fontSize: 14),
//            ),
//          ),
//          2: Padding(
//            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 6),
//            child: Text(
//              "Fees & Payments",
//              style: TextStyle(fontSize: 14),
//            ),
//          ),
//        };

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              RichText(
                textAlign: textAlignment,
                text: TextSpan(
                  text: 'Applications',
                  style: TextStyle(
                    fontSize: 13,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <TextSpan>[
                    TextSpan(
                      text: ' > ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'New Tourism Entry Permit',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        MyBullet(textColor),
                        Container(
                            height: 1, width: tilewidth, color: Colors.black38),
                        MyBullet(Colors.white),
                        Container(
                            height: 1, width: tilewidth, color: Colors.black38),
                        MyBullet(Colors.white),
                      ],
                    ),
                    SizedBox(height: 7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          "Application Details",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Text(
                          "Documents",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Text(
                          "Fees & Payments",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
//                child: CupertinoSlidingSegmentedControl(
//                  groupValue: segmentedControlGroupValue,
//                  children: myTabs,
//                  onValueChanged: (i) {},
//                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 1200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(color: Colors.black26)],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                          child: RichText(
                            textAlign: textAlignment,
                            text: TextSpan(
                              text: 'Applicant Name',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\nNone',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: RichText(
                            textAlign: textAlignment,
                            text: TextSpan(
                              text: 'Applicant File No.',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\nNone',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: RichText(
                            textAlign: textAlignment,
                            text: TextSpan(
                              text: 'Application No.',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\nNone',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 25.0,
                          height: 15.0,
                          child: RaisedButton(
                            padding: const EdgeInsets.all(2.0),
                            onPressed: () {},
                            color: Colors.black54,
                            child: new Row(
                              children: <Widget>[
                                Text(
                                  'DRAFT',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              MyFormDetails(),
            ],
          ),
        );
      },
    );
  }

  void setState(Null Function() param0) {}
}

class MyBullet extends StatelessWidget {
  final Color colors;

  const MyBullet(this.colors, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 15.0,
      width: 15.0,
      decoration: new BoxDecoration(
        color: colors,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
    );
  }
}
