import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sodesh_smart_healthcare/src/contstants/app_color.dart';

class ManageCard extends StatelessWidget {
  ManageCard({super.key, required this.name, required this.icon});
final String name;
final Icon icon;
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 100,
      width: double.infinity,
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 15,
                      backgroundColor: buttonColor,
                      child: icon,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                const Text(
                  "You set reminder for your appointment at today!",
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
