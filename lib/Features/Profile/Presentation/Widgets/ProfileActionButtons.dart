import 'package:flutter/material.dart';

class ProfileActionButtons extends StatelessWidget {
  const ProfileActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 124,
          height: 28,
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
              color: Color(0xff25292E), borderRadius: BorderRadius.circular(6)),
          child: Center(
            child: Text(
              'Edit profile',
              style: TextStyle(color: Colors.white, fontSize: 15),
              //textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          width: 122,
          height: 28,
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
              color: Color(0xff25292E), borderRadius: BorderRadius.circular(6)),
          child: Center(
            child: Text(
              'Share profile',
              style: TextStyle(color: Colors.white, fontSize: 15),
              //textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          width: 124,
          height: 28,
          decoration: BoxDecoration(
              color: Color(0xff25292E), borderRadius: BorderRadius.circular(6)),
          child: Center(
            child: Text(
              'Email',
              style: TextStyle(color: Colors.white, fontSize: 15),
              //textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
