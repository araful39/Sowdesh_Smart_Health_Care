import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.name});
final String name;
  @override
  Widget build(BuildContext context) {
    return  Text(name,style: TextStyle(fontWeight: FontWeight.bold),);
  }
}
