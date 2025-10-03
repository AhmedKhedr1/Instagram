import 'package:flutter/material.dart';

class ProfileStat extends StatelessWidget {
  const ProfileStat({
    super.key,
    required this.Label,
    required this.value,
  });
  final String Label, value;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          Label,
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
