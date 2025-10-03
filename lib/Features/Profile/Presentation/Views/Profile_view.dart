import 'package:flutter/material.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/Profile_view_body.dart';

class profileview extends StatelessWidget {
  const profileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C0F14),
      body: ProfileViewBody(),
    );
  }
}
