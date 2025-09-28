import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/app_style.dart';


class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Widget? icon;
  final TextStyle? styleText;
  final VoidCallback? onPressed;
  final Color? iconColor;
final Color?bgColor;

  const ElevatedButtonWidget({
    required this.text,
    this.icon,
    this.bgColor,
    this.iconColor,
    this.styleText,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
            side: BorderSide(color:Colors.transparent, width: 2),
          ),
          padding: EdgeInsets.all(13),
        ).copyWith(
          backgroundColor: MaterialStateProperty.all(bgColor??AppColor.primaryColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? SizedBox(),
            SizedBox(width: 6),
            Text(
              text,
              style: styleText ?? AppStyles.bold20white,
            ),
          ],
        ),
      ),
    );
  }
}
