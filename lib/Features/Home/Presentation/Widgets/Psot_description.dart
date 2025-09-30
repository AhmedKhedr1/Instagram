
import 'package:flutter/material.dart';
import 'package:instagram/Features/Home/data/models/post_Model.dart';

class Psot_description extends StatelessWidget {
  const Psot_description({
    super.key,
    required this.postModel,
  });

  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
        child: Column(children: [
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.white, fontSize: 14),
              children: [
                TextSpan(
                  text: postModel.user_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '  ',
                ),
                TextSpan(
                  text: postModel.description,
                ),
                // TextSpan(
                //   text: " more",
                //   style: TextStyle(color: Colors.grey),
                // ),
              ],
            ),
          ),
        ]));
  }
}
