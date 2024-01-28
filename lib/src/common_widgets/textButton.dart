import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, required this.text, this.color, required this.onpress});
  final String text;
  final Color? color;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onpress,
        child: Text(
          text,
          style: TextStyle(color: color?? Colors.indigo),
        ));
  }
}
