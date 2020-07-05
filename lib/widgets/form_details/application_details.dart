import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/constants/app_colors.dart';

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

      double controlSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 14
              : 18;
      final theme = Theme.of(context).copyWith(dividerColor: Colors.white);
      return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 700,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.black26)],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Theme(
                        data: theme,
                        child: ExpansionTile(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 17.0),
                              alignment: Alignment.topLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 20),
                                  Text(
                                    'Establishment Name',
                                    //\nRoads And Transport Authority',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'Roads And Transport Authority',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                    textAlign: textAlignment,
                                  ),
                                  SizedBox(height: 20),
                                  TextFormField(
                                      decoration: InputDecoration(
                                    labelText: "Client Reference No.",
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Container(
                            height: 1, width: 140.0, color: Colors.black38),
                      ),
                      Theme(
                        data: theme,
                        child: ExpansionTile(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 17.0),
                              alignment: Alignment.topLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 15),
                                  DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Visit Purpose \*',
                                      fillColor: Colors.white,
                                      contentPadding: const EdgeInsets.all(6.0),
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
                                    ),
                                    isExpanded: true,
                                    value: _selectedPurpose,
                                    style: TextStyle(
                                      //fontSize: controlSize,
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
                                  SizedBox(height: 30),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 320,
                                  height: 65,
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Duration \*',
                                      fillColor: Colors.white,
                                      contentPadding: const EdgeInsets.all(6.0),
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
                                    ),
                                    isExpanded: true,
                                    value: _selectedDuration,
                                    style: TextStyle(
                                      //fontSize: controlSize,
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
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                SizedBox(
                                  width: 320,
                                  height: 65,
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Entry \*',
                                      fillColor: Colors.white,
                                      contentPadding: const EdgeInsets.all(6.0),
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
                                    ),
                                    isExpanded: true,
                                    value: _selectedEntry,
                                    style: TextStyle(
                                      //fontSize: controlSize,
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
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                            height: 1.0, width: 140.0, color: Colors.black38),
                      ),
                      Theme(
                        data: theme,
                        child: ExpansionTile(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 17.0),
                              alignment: Alignment.topLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                        style: new TextStyle(fontSize: 16.0),
                                      ),
                                      SizedBox(
                                        width: 130,
                                      ),
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
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Passport Type \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedType,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedType = newValue;
                                            });
                                          },
                                          items: _type.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 80,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Passport Number \*",
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Current Nationality \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedNationality,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedNationality = newValue;
                                            });
                                          },
                                          items: _nationality.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText:
                                                'Previous Nationality \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedNationality,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedNationality = newValue;
                                            });
                                          },
                                          items: _nationality.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 17.0),
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
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                            height: 1.0, width: 140.0, color: Colors.black38),
                      ),
                      Theme(
                        data: theme,
                        child: ExpansionTile(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 17.0),
                              alignment: Alignment.topLeft,
                              child: Column(
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
                                    contentPadding: const EdgeInsets.all(0.1),
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
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Mother Name En \*",
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
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 80,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Mother Name Ar \*",
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Marital Status \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedNationality,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedNationality = newValue;
                                            });
                                          },
                                          items: _nationality.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 80,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText:
                                              "Relationship with Sponsor \*",
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Religion \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedNationality,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedNationality = newValue;
                                            });
                                          },
                                          items: _nationality.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Faith \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedNationality,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedNationality = newValue;
                                            });
                                          },
                                          items: _nationality.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Education \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedNationality,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedNationality = newValue;
                                            });
                                          },
                                          items: _nationality.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 80,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Profession \*",
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width: 650,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText: 'First Language \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedNationality,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedNationality = newValue;
                                            });
                                          },
                                          items: _nationality.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                            height: 1.0, width: 140.0, color: Colors.black38),
                      ),
                      Theme(
                        data: theme,
                        child: ExpansionTile(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 17.0),
                              alignment: Alignment.topLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Please provide contacts to receive confirmation and future communication about this application:',
                                    style: TextStyle(
                                      fontSize: 13,
                                      height: 3,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                    ),
                                    textAlign: textAlignment,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Email \*",
                                          hintText: 'abc@example.com',
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
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 80,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Mobile Number \*",
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width: 650,
                                        height: 65,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText:
                                              "Approval Email Copy Recipient",
                                          hintText: 'abc@example.com',
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Emirate \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedNationality,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedNationality = newValue;
                                            });
                                          },
                                          items: _nationality.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText: 'City \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedNationality,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedNationality = newValue;
                                            });
                                          },
                                          items: _nationality.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Area \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedNationality,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedNationality = newValue;
                                            });
                                          },
                                          items: _nationality.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 80,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Street \*",
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Building \*",
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
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 80,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Landmark",
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Makani No",
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Country \*',
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
                                          ),
                                          isExpanded: true,
                                          value: _selectedNationality,
                                          style: TextStyle(
                                            //fontSize: controlSize,
                                            color: Colors.black,
                                          ),
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedNationality = newValue;
                                            });
                                          },
                                          items: _nationality.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 80,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Mobile Number \*",
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 320,
                                        height: 65,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "City \*",
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
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 320,
                                        height: 80,
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          labelText: "Address \*",
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
            Column(
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
          ]);
    });
  }
}
