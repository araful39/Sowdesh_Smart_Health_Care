import 'package:flutter/material.dart';
import 'package:sodesh_smart_healthcare/src/contstants/app_color.dart';
class RoundButton extends StatelessWidget {
   RoundButton({super.key, required this.name, this.color, this.height, this.width, required this.onpress});
   final String name;
   final Color? color;
   final double? height;
   final double? width;
   final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {

    return  Container(
      height: height ?? 50,
      width: width ??200,
      decoration: BoxDecoration(
        color: color ?? Colors.indigo.shade800,
        borderRadius: BorderRadius.circular(25),

      ),child: Center(
      child: Text(name,style: TextStyle(color: Colors.white),),
    ),
    );
  }}

