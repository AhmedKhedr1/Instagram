import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';

class ProfileTabBar extends StatelessWidget {
  ProfileTabBar({
    super.key,
  });
  final selectedindex = 0;
  final List<String> tapImage = [
    Assets.Gridicon,
    Assets.reelsicon,
    Assets.Starsicon,
    Assets.Tagicon
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          tapImage.length,
          (index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Image.asset(
                    tapImage[index],
                    color: index == 0 ? null : Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 1,
                  width: 92,
                  color: selectedindex==index?Colors.white:Colors.transparent,
                )
              ],
            );
          },
        ));
  }
}
