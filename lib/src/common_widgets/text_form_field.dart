import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormCustom extends StatelessWidget {
  const TextFormCustom({super.key,required this.hintName, this.maxLine});
final String hintName;
final int ? maxLine;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      decoration: InputDecoration(
          hintText: hintName,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder()),
    );
  }
}
