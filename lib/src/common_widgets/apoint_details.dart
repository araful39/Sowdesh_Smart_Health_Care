import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sodesh_smart_healthcare/src/contstants/images.dart';

class ApointDetails extends StatelessWidget {
  const ApointDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xffE1EDED),
                    Color(0xffE1EDED),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 20, right: 20, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            "assets/icons/arrow.png",
                            height: height * 0.04,
                            width: width * 0.04,
                            color: Colors.black,
                          ),
                          backgroundColor: Colors.white54,
                        ),
                        Text(
                          "Appoint Details",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
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
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                image: NetworkImage(doctor_m_1),
                                height: height * 0.2)),
                        SizedBox(
                          width: width * 0.06,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              "Dr. Cameron Compton",
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "Qualification",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              "Provident ex non et",
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "Institute",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              "Omanis eyrotn",
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "Mobile",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              "+88 014521563124",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: height * 0.5,
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 30, bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Appoint Form",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "We will catch you as early as we receive the appointment",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: height*0.01,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText:"Enter your name"
                          ),
                        )
                        ,SizedBox(
                          height: height*0.01,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText:"Enter your mobile number"
                          ),
                        ),
                        SizedBox(
                          height: height*0.01,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText:"Select gender"
                          ),
                        )
                        ,SizedBox(
                    height: height*0.01,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText:"Select blood group"
                    ),
                  ),
                    SizedBox(
                    height: height*0.01,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText:"Write your problem"
                    ),
                  ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
