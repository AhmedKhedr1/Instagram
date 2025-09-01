import 'package:flutter/material.dart';

class Custom_TextField extends StatelessWidget {
  const Custom_TextField({super.key, required this.hinttext});
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: TextStyle(color: Color(0xffB7C4CC), fontSize: 15),
            contentPadding: EdgeInsets.all(18),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff455056), width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff455056), width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
