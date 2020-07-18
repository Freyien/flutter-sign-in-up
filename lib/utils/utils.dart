import 'package:flutter/material.dart';
import 'package:flutter_ui_logins/pages/home_page.dart';
import 'package:flutter_ui_logins/theme.dart';
import 'package:provider/provider.dart';

Future<bool> onBackPressed(context) {
  return showDialog(
    context: context,
    builder: (context) => new AlertDialog(
      title: new Text('Are you sure?'),
      content: new Text('Do you want to go to the Home Page?'),
      actions: <Widget>[
        RaisedButton(
          color: Colors.white,
          elevation: 0,
          disabledElevation: 0,
          focusElevation: 0,
          highlightElevation: 0,
          hoverElevation: 0,
          child: Text("NO"),
          onPressed: () => Navigator.of(context).pop(false),
        ),
        RaisedButton(
          child: Text("YES"),
          elevation: 0,
          disabledElevation: 0,
          focusElevation: 0,
          highlightElevation: 0,
          hoverElevation: 0,
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Provider.of<CustomTheme>(context, listen: false).selectAppTheme();
            Navigator.pushAndRemoveUntil(
              context, 
              MaterialPageRoute(builder: (context) => HomePage()), 
              (route) => false
            );
          }
        ), 
      ],
    ),
  ) ??
      false;
}