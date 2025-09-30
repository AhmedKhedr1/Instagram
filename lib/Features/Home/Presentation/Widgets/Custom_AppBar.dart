// ignore_for_file: must_be_immutable, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/Core/utils/Assets.dart';

class Custom_AppBar extends StatelessWidget {
  Custom_AppBar({
    super.key,
    required this.messagesCount,
    required this.HasNotification,
  });

  final int messagesCount;

  bool HasNotification = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          SvgPicture.asset(Assets.instagram_Headline),
          Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(
                Icons.favorite_outline_outlined,
                color: Colors.white,
                size: 28,
              ),
              if (HasNotification)
                Positioned(
                  right: 1,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color(0xffFF0034), shape: BoxShape.circle),
                  ),
                ),
            ],
          ),
          SizedBox(
            width: 16,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                Assets.Direct_message,
                color: Colors.white,
              ),
              Positioned(
                  right: -10,
                  top: -12,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color(0xffff0034), shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        messagesCount.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
