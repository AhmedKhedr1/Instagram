import 'package:flutter/material.dart';

class Languageselector extends StatefulWidget {
  const Languageselector({super.key});

  @override
  State<Languageselector> createState() => _LanguageselectorState();
}

class _LanguageselectorState extends State<Languageselector> {
  String selectedLang = "English (US)";

  final List<String> languages = [
    "English (US)",
    "English (UK)",
    "العربية",
    "Français",
    "Deutsch",
    "Español",
  ];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: DropdownButton<String>(
        value: selectedLang,
        dropdownColor: Colors.black,
        underline: SizedBox(),
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.grey,
          size: 36,
        ),
        style: TextStyle(color: Colors.grey, fontSize: 20),
        items: languages.map(
          (e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          },
        ).toList(),
        onChanged: (value) {
          setState(() {
            selectedLang = value!;
          });
        },
      ),
    );
  }
}
