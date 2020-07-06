import 'package:flutter/material.dart';
import 'package:the_basics/widgets/call_to_action/call_to_action.dart';
import 'package:the_basics/widgets/course_details/course_details.dart';
import 'package:the_basics/widgets/form_details/application_details.dart';
import 'package:the_basics/widgets/form_details/form_details.dart';
import 'package:the_basics/widgets/navigation_bar/navigation_bar.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: ScrollController(), // <---- Here, the controller
      isAlwaysShown: false, // <---- Required
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FormDetails(),
            //CourseDetails(),
            //CallToAction('Submit'),
          ],
        ),
      ),
    );
  }
}
