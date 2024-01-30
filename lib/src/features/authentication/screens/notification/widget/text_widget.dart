import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.name});
final String name;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        Spacer(),
        Text("Clear All",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
