import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier{
  // logic theme
///1 object from theme mode
ThemeMode themeMode=ThemeMode.dark;
/// method
void changeTheme(ThemeMode newTheme){
  if(themeMode==newTheme) return;
  themeMode=newTheme;
  notifyListeners();
}
}