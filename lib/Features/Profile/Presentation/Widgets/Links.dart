
import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';

class Links extends StatelessWidget {
  const Links({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 16,
            width: 16,
            child: Image.asset(
              Assets.links,
              color: Colors.white,
              fit: BoxFit.fill,
            )),
        SizedBox(
          width: 5,
        ),
        Text(
          'ahmed khedr and 3 more',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
