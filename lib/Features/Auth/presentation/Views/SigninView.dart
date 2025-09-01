import 'package:flutter/material.dart';
import 'package:instagram/Constant.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/Signview_Body.dart';

class Signinview extends StatelessWidget {
  const Signinview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: SignviewBody(),
    );
  }
}
