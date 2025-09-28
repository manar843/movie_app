
import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class TextFieldWidget extends StatelessWidget {
 String title;
 Color? suffixIconColor;
 TextStyle? styleTitle;
Widget  icon;
Widget? suffixIcon;
Color? colorIcon;
Color?colorBackground;
  TextFieldWidget({required this.title ,required this.icon,
    this.styleTitle,this.colorIcon,this.colorBackground,this.suffixIcon,this.suffixIconColor}) ;
  @override
  Widget build(BuildContext context) {
    var sizeScreen =MediaQuery.of(context).size;
    return Container(
margin:EdgeInsets.all(10) ,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor:colorBackground?? Theme.of(context).primaryColor,
          focusColor:  Colors.grey,
          focusedBorder: OutlineInputBorder(
            borderSide:   BorderSide(color:  Colors.white, width: 2.0),
           borderRadius: BorderRadius.circular(22),
          ),
          border: OutlineInputBorder(
            borderSide:   BorderSide(color:  Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(22),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:   BorderSide(color:  Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(16),
          ),
          prefixIcon:icon ,
           prefixIconColor: colorIcon?? Colors.white ,
          hintText:title,
          hintStyle: styleTitle?? AppStyles.med16White,
         suffixIcon:suffixIcon ,
          suffixIconColor: suffixIconColor,
        ),
      ),
    ) ;
  }
}
