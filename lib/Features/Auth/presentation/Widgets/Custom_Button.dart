import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.text,
    required this.textcolor,
    required this.buttoncolor,
    this.SideColor,
    required this.onpressed, required this.fontSize,
  });
  final String text;
  final Color textcolor, buttoncolor;
  final VoidCallback onpressed;
  final Color? SideColor;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: buttoncolor,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: BorderSide(color: SideColor ?? Colors.transparent))),
        onPressed: onpressed,
        child: Text(
          text,
          style: TextStyle(
              color: textcolor, fontSize: fontSize, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
