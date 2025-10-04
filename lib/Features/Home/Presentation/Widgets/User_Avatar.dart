import 'package:flutter/material.dart';

class User_Avatar extends StatelessWidget {
  const User_Avatar({
    super.key,
    required this.Fpadding,
    required this.Spadding,
    required this.imageraduis,
    required this.colors,
    required this.Avatar_image,
  });
  final double Fpadding, Spadding, imageraduis;
  final List<Color> colors;
  final String Avatar_image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Fpadding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(Spadding),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
        child: CircleAvatar(
          backgroundColor: Color(0xff0C1014),
          radius: imageraduis,
          backgroundImage: AssetImage(
            Avatar_image,
          ),
        ),
      ),
    );
  }
}
