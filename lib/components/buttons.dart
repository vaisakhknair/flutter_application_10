import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;
  VoidCallback onpressed;
  Buttons({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
