import 'package:flutter/material.dart';
import 'package:new_app/movie_app/providar/app_theme_providar.dart';
import 'package:new_app/profile.dart';
import 'package:new_app/prym.dart';
import 'package:new_app/register.dart';
import 'package:new_app/utils/my_theme_app.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';
import 'login.dart';
import 'movie_app/view_model/app_brain.dart';
import 'movie_app/views/home_ movie.dart';
final AppBrain appBrain=AppBrain();
void main() {
  runApp(  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=>AppThemeProvider()) ,
    ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
    MyApp({super.key});

   @override
  Widget build(BuildContext context) {
     var themeProvider= Provider.of<AppThemeProvider>(context);
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
    initialRoute: HomeMovie.routeName,
   routes:{

     HomeMovie.routeName:(context)    =>HomeMovie(),
   HomeScreen.routeName : (context)=> HomeScreen(),
     Login.routeName : (context)=> Login(),
     Register.routeName : (context)=> Register(),
     Profile.routeName : (context)=> Profile(),
     Pyramids.routeName : (context)=> Pyramids(),

   },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: themeProvider.themeMode,
    );
  }
}
