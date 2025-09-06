import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.text,
    required this.textcolor,
    required this.buttoncolor,
    this.SideColor,
    required this.onpressed,
  });
  final String text;
  final Color textcolor, buttoncolor;
  final VoidCallback onpressed;
  final Color? SideColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: buttoncolor,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: SideColor ?? Colors.transparent))),
      onPressed: onpressed,
      child: Text(
        text,
        style: TextStyle(color: textcolor, fontSize: 17),
      ),
    );
  }
}
