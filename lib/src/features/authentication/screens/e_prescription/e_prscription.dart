import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sodesh_smart_healthcare/src/contstants/images.dart';
import 'package:sodesh_smart_healthcare/src/features/authentication/screens/e_prescription/widget/e_card.dart';
import 'package:sodesh_smart_healthcare/src/features/authentication/screens/profile/widget/managecard.dart';

class Eprescription extends StatelessWidget {
  const Eprescription({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
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
                    "E-Prescription",
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
              Ecard(
                name: 'Dr. Rachard W.',
                imagePath: doctor_m_1,
              ),
              Ecard(
                name: 'Dr. Rachard W.',
                imagePath: doctor_f_1,
              ),
              Ecard(
                name: 'Dr. Rachard W.',
                imagePath: doctor_m_1,
              ),
              Ecard(
                name: 'Dr. Rachard W.',
                imagePath: doctor_f_1,
              ),
              Ecard(
                name: 'Dr. Rachard W.',
                imagePath: doctor_m_1,
              ),
              Ecard(
                name: 'Dr. Rachard W.',
                imagePath: doctor_f_1,
              ),
              Ecard(
                name: 'Dr. Rachard W.',
                imagePath: doctor_m_1,
              ),
              Ecard(
                name: 'Dr. Rachard W.',
                imagePath: doctor_f_1,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
