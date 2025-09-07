import 'package:flutter/material.dart';

class Languageselector extends StatefulWidget {
  const Languageselector({super.key});

  @override
  State<Languageselector> createState() => _LanguageselectorState();
}

class _LanguageselectorState extends State<Languageselector> {
  String selectedLanguage = "English (US)";

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
      alignment: Alignment.topCenter,
    );
  }
}
