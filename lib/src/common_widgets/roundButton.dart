import 'package:flutter/material.dart';
class RoundButton extends StatelessWidget {
   const RoundButton({super.key, required this.name, this.color=Colors.indigo, this.height, this.width, required this.onpress});
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
        color: color,
        borderRadius: BorderRadius.circular(25),

      ),child: Center(
      child: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
    ),
    );
  }}

