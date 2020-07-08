import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/constants/app_colors.dart';
import 'package:the_basics/widgets/call_to_action/call_to_action.dart';
import 'package:the_basics/widgets/form_details/section_titles.dart';

class MyFormDetails extends StatefulWidget {
  @override
  //State<StatefulWidget> createState() => _ExampleState();
  _MyFormDetailsState createState() {
    return _MyFormDetailsState();
  }
}

enum Passport { Search, Scan }

class _MyFormDetailsState extends State<MyFormDetails> {
//  List<String> _locations = ['Please choose a location', 'A', 'B', 'C', 'D']; // Option 1
//  String _selectedLocation = 'Please choose a location'; // Option 1
  List<String> _purpose = ['Cruise Ships', 'Tourism']; // Option 2
  List<String> _duration = ['30 Days', '90 Days']; // Option 2
  List<String> _entry = ['Single Entry', 'Multiple Entry'];
  List<String> _type = ['Normal', 'Diplomatic'];
  List<String> _nationality = [
    '209 - AFGHANISTAN',
    '701 - AUSTRALIA',
    '107 - BAHRAIN',
    '125 - EGYPT'
  ];

  ///// Option 2
  String _selectedPurpose; // Option 2
  String _selectedDuration;
  String _selectedEntry;
  String _selectedType;
  String _selectedNationality;
  bool _checked = false;
  Passport _radioValue1 = Passport.Search;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.left;

      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;

      double textSize =
      sizingInformation.deviceScreenType == DeviceScreenType.mobile
          ? 14
          : 16;

      double screenWidth =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 400
              : 700;

      double controlwidth =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 150
              : 320;

      double singlecontrolwidth =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 300
              : 650;

      double radiocontrolwidth =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 1
              : 130;

      final theme = Theme.of(context).copyWith(dividerColor: Colors.white);
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [BoxShadow(color: Colors.black26)],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: <Widget>[
                          Theme(
                            data: theme,
                            child: ExpansionTile(
                              trailing: Icon(
                                Icons.check_circle,
                                size: 20.0,
                                color: Colors.green,
                              ),
                              initiallyExpanded: true,
                              title: Text(
                                'Sponsor/Submitter',
                                style: TextStyle(
                                  fontSize: descriptionSize,
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                ),
                                textAlign: textAlignment,
                              ),
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17.0),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      Text(
                                        'Establishment Name',
                                        //\nRoads And Transport Authority',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        'Roads And Transport Authority',
                                        style: TextStyle(
                                          fontSize: textSize,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: textAlignment,
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        'Client Reference No.',
                                        //\nRoads And Transport Authority',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 7),
                                      SizedBox(
                                        width: singlecontrolwidth,
                                        height: 40,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          //labelText: "Client Reference No.",
                                          fillColor: Colors.white,
                                          contentPadding:
                                              const EdgeInsets.all(6.0),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: Colors.black38,
                                              width: 0.5,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: Colors.black38,
                                              width: 0.5,
                                            ),
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Container(
                                height: 1, width: 700.0, color: Colors.black38),
                          ),
                          Theme(
                            data: theme,
                            child: ExpansionTile(
                              trailing: Icon(
                                Icons.error,
                                size: 20.0,
                                color: Colors.red,
                              ),
                              initiallyExpanded: true,
                              title: Text(
                                'Visit Details',
                                style: TextStyle(
                                  fontSize: descriptionSize,
                                  height: 3,
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                ),
                                textAlign: textAlignment,
                              ),
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17.0),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 15),
                                      dropdown('Visit Purpose',
                                          singlecontrolwidth, _purpose),
                                      SizedBox(height: 20),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          dropdown('Duration', controlwidth,
                                              _duration),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          dropdown(
                                              'Entry', controlwidth, _entry),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Container(
                                height: 1.0,
                                width: 700.0,
                                color: Colors.black38),
                          ),
                          Theme(
                            data: theme,
                            child: ExpansionTile(
                              trailing: Icon(
                                Icons.error,
                                size: 20.0,
                                color: Colors.red,
                              ),
                              initiallyExpanded: true,
                              title: Text(
                                'Passport Details',
                                style: TextStyle(
                                  fontSize: descriptionSize,
                                  height: 3,
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                ),
                                textAlign: textAlignment,
                              ),
                              children: <Widget>[
                                SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17.0),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Radio(
                                            value: Passport.Search,
                                            groupValue: _radioValue1,
                                            onChanged: (value) {
                                              setState(() {
                                                _radioValue1 = value;
                                              });
                                            },
                                            activeColor: textColor,
                                          ),
                                          Text(
                                            'Search Passport Data',
                                            style:
                                                new TextStyle(fontSize: textSize),
                                          ),
                                          SizedBox(width: radiocontrolwidth),
                                          Radio(
                                            value: Passport.Scan,
                                            groupValue: _radioValue1,
                                            onChanged: (value) {
                                              setState(() {
                                                _radioValue1 = value;
                                              });
                                            },
                                            activeColor: textColor,
                                          ),
                                          Text(
                                            'Scan Passport',
                                            style: new TextStyle(
                                              fontSize: textSize,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          dropdown('Passport Type',
                                              controlwidth, _type),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          textfield(
                                              'Passport Number', controlwidth),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          dropdown('Current Nationality',
                                              controlwidth, _nationality),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          dropdown('Previous Nationality',
                                              controlwidth, _nationality),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17.0),
                                  alignment: Alignment.topRight,
                                  child: RaisedButton(
                                    child: Text('Search Data'),
                                    textColor: Colors.white,
                                    color: textColor,
                                    onPressed: () {},
                                    shape: StadiumBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Container(
                                height: 1.0,
                                width: 700.0,
                                color: Colors.black38),
                          ),
                          Theme(
                            data: theme,
                            child: ExpansionTile(
                              trailing: Icon(
                                Icons.error,
                                size: 20.0,
                                color: Colors.red,
                              ),
                              initiallyExpanded: true,
                              title: Text(
                                'Applicant Details',
                                style: TextStyle(
                                  fontSize: descriptionSize,
                                  height: 3,
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                ),
                                textAlign: textAlignment,
                              ),
                              children: <Widget>[
                                SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17.0),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      CheckboxListTile(
                                        title: Text('Is Inside UAE'),
                                        value: _checked,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: (bool value) {
                                          setState(() {
                                            _checked = value;
                                          });
                                        },
                                        activeColor: Colors.black45,
                                        checkColor: textColor,
                                        contentPadding:
                                            const EdgeInsets.all(0.1),
                                      ),
                                      Text(
                                        "• It is the responsibility of the sponsor to enter the correct status of the applicant (inside or outside the country).\n• Additional fees will be applied when selecting this option.\n• In the event this information is not entered correctly, GDRFA reserves its rights to take the appropriate actions as per the governing laws.",
                                        style: TextStyle(
                                          fontSize: 13,
                                          height: 1.5,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                        textAlign: textAlignment,
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          textfield(
                                              'Mother Name En', controlwidth),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          textfield(
                                              'Mother Name Ar', controlwidth),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          dropdown('Marital Status',
                                              controlwidth, _nationality),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          textfield('Relationship with Sponsor',
                                              controlwidth),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          dropdown('Religion', controlwidth,
                                              _nationality),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          dropdown('Faith', controlwidth,
                                              _nationality),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          dropdown('Education', controlwidth,
                                              _nationality),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          textfield('Profession', controlwidth),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          dropdown('First Language',
                                              singlecontrolwidth, _nationality),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Container(
                                height: 1.0,
                                width: 700.0,
                                color: Colors.black38),
                          ),
                          Theme(
                            data: theme,
                            child: ExpansionTile(
                              trailing: Icon(
                                Icons.error,
                                size: 20.0,
                                color: Colors.red,
                              ),
                              initiallyExpanded: true,
                              title: Text(
                                'Contact Details',
                                style: TextStyle(
                                  fontSize: descriptionSize,
                                  height: 3,
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                ),
                                textAlign: textAlignment,
                              ),
                              children: <Widget>[
                                SizedBox(height: 15),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17.0),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Please provide contacts to receive confirmation and future communication about this application:',
                                        style: TextStyle(
                                          fontSize: 13,
                                          height: 1.5,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black,
                                        ),
                                        textAlign: textAlignment,
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          textfield('Email', controlwidth),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          textfield(
                                              'Mobile Number', controlwidth),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Approval Email Copy Recipient',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                        .withOpacity(0.8)),
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(height: 7),
                                              SizedBox(
                                                width: controlwidth,
                                                height: 40,
                                                child: TextFormField(
                                                    decoration: InputDecoration(
                                                  fillColor: Colors.white,
                                                  contentPadding:
                                                      const EdgeInsets.all(6.0),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.black38,
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.black38,
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                )),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Address Inside UAE',
                                        style: TextStyle(
                                          fontSize: 15,
                                          height: 3,
                                          fontWeight: FontWeight.bold,
                                          color: textColor,
                                        ),
                                        textAlign: textAlignment,
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          dropdown('Emirate', controlwidth,
                                              _nationality),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          dropdown('City', controlwidth,
                                              _nationality),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          dropdown('Area', controlwidth,
                                              _nationality),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          textfield('Street', controlwidth),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          textfield('Building', controlwidth),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Landmark',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                        .withOpacity(0.8)),
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(height: 7),
                                              SizedBox(
                                                width: controlwidth,
                                                height: 40,
                                                child: TextFormField(
                                                    decoration: InputDecoration(
                                                  fillColor: Colors.white,
                                                  contentPadding:
                                                      const EdgeInsets.all(6.0),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.black38,
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.black38,
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                )),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Makani No',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black
                                                        .withOpacity(0.8)),
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(height: 7),
                                              SizedBox(
                                                width: controlwidth,
                                                height: 40,
                                                child: TextFormField(
                                                    decoration: InputDecoration(
                                                  fillColor: Colors.white,
                                                  contentPadding:
                                                      const EdgeInsets.all(6.0),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.black38,
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.black38,
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                )),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Address Outside UAE',
                                        style: TextStyle(
                                          fontSize: 15,
                                          height: 3,
                                          fontWeight: FontWeight.bold,
                                          color: textColor,
                                        ),
                                        textAlign: textAlignment,
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          dropdown('Country', controlwidth,
                                              _nationality),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          textfield(
                                              'Mobile Number', controlwidth),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          textfield('City', controlwidth),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          textfield('Address', controlwidth),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ScreenTypeLayout(
                  mobile: Container(color: bodyColor),
                  tablet: sectiontitles(),
                  desktop: sectiontitles(),
                ),
              ],
            ),
          ],
        ),
      );
//      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
//        return sectiontitles();
//      }
    });
  }
}

class textfield extends StatefulWidget {
  final String title;

  final double fieldwidth;

  const textfield(this.title, this.fieldwidth, {Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _textfieldState();
  }
}

class _textfieldState extends State<textfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
//      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
              text: widget.title,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.8)),
              children: [
                TextSpan(
                    text: ' *',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))
              ]),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 7),
        SizedBox(
          width: widget.fieldwidth,
          height: 40,
          child: TextFormField(
              decoration: InputDecoration(
//                labelText: "Mother Name Ar \*",
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(6.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.black38,
                width: 0.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.black38,
                width: 0.5,
              ),
            ),
          )),
        ),
      ],
    );
  }
}

class dropdown extends StatefulWidget {
  final String title;
  final List<String> items;

  final double fieldwidth;

  const dropdown(this.title, this.fieldwidth, this.items, {Key key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _dropdownState();
  }
}

class _dropdownState extends State<dropdown> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
              text: widget.title,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.8)),
              children: [
                TextSpan(
                    text: ' *',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))
              ]),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 7),
        SizedBox(
          width: widget.fieldwidth,
          height: 40,
          child: DropdownButtonFormField(
            decoration: InputDecoration(
              hintText: '-- Select --',
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(6.0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  color: Colors.black38,
                  width: 0.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  color: Colors.black38,
                  width: 0.5,
                ),
              ),
            ),
            isExpanded: true,
            value: _value,
            style: TextStyle(
              //fontSize: controlSize,
              color: Colors.black,
            ),
            onChanged: (newValue) {
              setState(() {
                _value = newValue;
              });
            },
            items: widget.items.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
