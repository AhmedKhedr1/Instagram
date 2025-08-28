
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/Core/utils/Assets.dart';

class Custom_AppBar extends StatelessWidget {
  const Custom_AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.instagram_Headline,
          ),
          Spacer(),
          Image.asset(
            Assets.Like_icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 16,
          ),
          Image.asset(
            Assets.Direct_message,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
