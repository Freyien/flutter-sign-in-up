import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTheme with ChangeNotifier {
  ThemeData _currentTheme;
  ThemeData _appTheme = ThemeData(
    primaryColor: Color(0xffB83B5D),
    scaffoldBackgroundColor: Color(0xff151924),
    accentColor: Color(0xffB83B5D)
  );
  ThemeData _winterTheme = ThemeData(
    primaryColor: Color(0xff545870),
    accentColor: Color(0xffFE5778)
  );
  ThemeData _headerTheme = ThemeData(
    primaryColor: Colors.red,
  );
  ThemeData _backgroundTheme = ThemeData(
    primaryColor: Color(0xff221C55),
  );

  // Constructor
  CustomTheme() {
    this._currentTheme = this._appTheme;
  }

  // Getters
  ThemeData get currentTheme => this._currentTheme;

  // Methods
  selectAppTheme() {
    this._currentTheme = _appTheme;
    notifyListeners();
  }
  selectWinterTheme() {
    this._currentTheme = _winterTheme;
    notifyListeners();
  }
  selectHeaderTheme(){
    this._currentTheme = _headerTheme;
    notifyListeners();
  }
  selectBackgroundTheme() {
    this._currentTheme = _backgroundTheme;
    notifyListeners();
  }
}