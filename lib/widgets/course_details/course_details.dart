import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/cupertino.dart';

class CourseDetails extends StatelessWidget {
  //final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  const CourseDetails({Key key}) : super(key: key);

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

        return Container(
          width: 1200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Application Form',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 1.1,
                    fontSize: titleSize),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              FormDetails(),
              //MyHomePage(),
            ],
          ),
        );
      },
    );
  }
}

class FormDetails extends StatefulWidget {
  @override
  //State<StatefulWidget> createState() => _ExampleState();
  _FormDetailsState createState() {
    return _FormDetailsState();
  }
}

class _FormDetailsState extends State<FormDetails> {
//  List<String> _locations = ['Please choose a location', 'A', 'B', 'C', 'D']; // Option 1
//  String _selectedLocation = 'Please choose a location'; // Option 1
  List<String> _purpose = ['Cruise Ships', 'Tourism']; // Option 2
  List<String> _duration = ['30 Days', '90 Days']; // Option 2
  List<String> _entry = ['Single Entry', 'Multiple Entry']; // Option 2
  String _selectedPurpose; // Option 2
  String _selectedDuration;
  String _selectedEntry;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.left;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;

        double controlSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 14
                : 18;

        return Container(
          width: 1200,
          height: 200,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Text(
                'Sponsor/Submitter',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 3,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: textAlignment,
              ),
              Text(
                'Establishment Name', //\nRoads And Transport Authority',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ),
              Text(
                'Roads And Transport Authority',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Client Reference No.'),
              ),
              Text(
                'Visit Details',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 3,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: textAlignment,
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Visit Purpose'),
                isExpanded: true,
                //hint: Text('Visit Purpose'),
                // Not necessary for Option 1
                value: _selectedPurpose,
                style: TextStyle(
                  fontSize: controlSize,
                  color: Colors.black,
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedPurpose = newValue;
                  });
                },
                items: _purpose.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Duration'),
                isExpanded: true,
//                hint: Text('Duration'),
                // Not necessary for Option 1
                value: _selectedDuration,
                style: TextStyle(
                  fontSize: controlSize,
                  color: Colors.black,
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedDuration = newValue;
                  });
                },
                items: _duration.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Entry'),
                isExpanded: true,
//                hint: Text('Entry'),
                // Not necessary for Option 1
                value: _selectedEntry,
                style: TextStyle(
                  fontSize: controlSize,
                  color: Colors.black,
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedEntry = newValue;
                  });
                },
                items: _entry.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
              Text(
                'Passport Details',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 3,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: textAlignment,
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Passport Type'),
                isExpanded: true,
                //hint: Text('Visit Purpose'),
                // Not necessary for Option 1
                value: _selectedPurpose,
                style: TextStyle(
                  fontSize: controlSize,
                  color: Colors.black,
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedPurpose = newValue;
                  });
                },
                items: _purpose.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Passport Number'),
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Current Nationality'),
                isExpanded: true,
//                hint: Text('Duration'),
                // Not necessary for Option 1
                value: _selectedDuration,
                style: TextStyle(
                  fontSize: controlSize,
                  color: Colors.black,
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedDuration = newValue;
                  });
                },
                items: _duration.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Previous Nationality'),
                isExpanded: true,
//                hint: Text('Entry'),
                // Not necessary for Option 1
                value: _selectedEntry,
                style: TextStyle(
                  fontSize: controlSize,
                  color: Colors.black,
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedEntry = newValue;
                  });
                },
                items: _entry.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
