import 'package:flutter/material.dart';
import 'package:sodesh_smart_healthcare/src/contstants/app_color.dart';

import 'widget/managecard.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      "assets/icons/left_arrow.png",
                      height: height * 0.04,
                      width: width * 0.04,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white54,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/icons/menu.png",
                        height: height * 0.03,
                        width: width * 0.04,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),

              ManageCard(name: 'Manage Appointment', icon: const Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
                size: 15,
              ),),
              SizedBox(
                height: height * 0.03,
              ),
              ManageCard(name: 'E-prescription', icon: const Icon(
                Icons.calendar_view_day_rounded,
                color: Colors.white,
                size: 15,
              ),),
              SizedBox(
                height: height * 0.03,
              ),
              ManageCard(name: 'Profile setting', icon: const Icon(
                Icons.settings,
                color: Colors.white,
                size: 15,
              ),),
              SizedBox(
                height: height * 0.03,
              ),
              ManageCard(name: 'Histroy', icon: const Icon(
                Icons.history,
                color: Colors.white,
                size: 15,
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
