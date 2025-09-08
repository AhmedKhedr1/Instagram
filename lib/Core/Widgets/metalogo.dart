import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';

class MetaLogo extends StatelessWidget {
  const MetaLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: SizedBox(
        width: 77,
        height: 39,
        child: Image.asset(
          Assets.metalogo,
          color: Color(0xffBCCAD3),
        ),
      ),
    );
  }
}
