import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/constants/app_colors.dart';

import 'application_details.dart';

class SectionTitles extends StatelessWidget {
  const SectionTitles({Key key}) : super(key: key);

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
        int segmentedControlGroupValue = 0;
        final Map<int, Widget> myTabs = const <int, Widget>{
          0: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 6),
            child: Text(
              "Application Details",
              style: TextStyle(fontSize: 14, color: textColor),
            ),
          ),
          1: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 6),
            child: Text(
              "Documents",
              style: TextStyle(fontSize: 14),
            ),
          ),
          2: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 6),
            child: Text(
              "Fees & Payments",
              style: TextStyle(fontSize: 14),
            ),
          ),
        };

        return SingleChildScrollView(
          child:Column(
            children: <Widget>[
              Container(
                width: 290,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(color: Colors.black26)],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Text('Sponsor/Submitter'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 290,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(color: Colors.black26)],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Text('Visit Details'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 290,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(color: Colors.black26)],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Text('Passport Details'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 290,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(color: Colors.black26)],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Text('Applicant Details'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 290,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(color: Colors.black26)],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Text('Contact Details'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}