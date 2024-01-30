import 'package:flutter/material.dart';
import 'package:sodesh_smart_healthcare/src/features/authentication/screens/apoint_details.dart';

import 'package:sodesh_smart_healthcare/src/features/authentication/screens/home/doctors_list.dart';
import 'package:sodesh_smart_healthcare/src/features/authentication/screens/home/doctors_video.dart';
import 'package:sodesh_smart_healthcare/src/features/authentication/screens/home/heath_card.dart';
import 'package:sodesh_smart_healthcare/src/common_widgets/roundButton.dart';
import 'package:sodesh_smart_healthcare/src/features/authentication/screens/home/see_all_widget.dart';

import 'package:sodesh_smart_healthcare/src/contstants/app_color.dart';
import 'package:sodesh_smart_healthcare/src/contstants/images.dart';
import 'package:sodesh_smart_healthcare/src/data/doctors_data_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DoctorsData _doctorsData = DoctorsData();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xffF2DEDE),
                    Color(0xffBCEAEA),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            child: Image.asset(
                          "assets/images/splash.png",
                          height: height * 0.08,
                          width: width * 0.08,
                        )),
                        Column(
                          children: [
                            Text(
                              "Current Location",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  "assets/icons/location.png",
                                  color: Colors.indigo,
                                  height: height * 0.03,
                                  width: width * 0.04,
                                ),
                                SizedBox(width: width * 0.02),
                                Text(
                                  "Sylhet, BD",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
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
                    Expanded(
                      child: Text(
                        "স্বদেশ সাতক্ষীরার একটি এনজিও স্বদেশ তার গ্রাহকদের একটি সম্পূর্ণ স্বাস্থ্য সুরক্ষা পরিষেবা দেওয়ার জন্য মাই স্মার্ট হেলথকেয়ার লিমিটেডের সাথে চুক্তি স্বাক্ষর করেছে। স্বদেশ এর গ্রাহকরা  `স্মার্ট ক্লিনিক` চিহ্নযুক্ত হাসপাতালে নগদের মাধ্যমে আউটডোর বিল পেমেন্ট করলে বিনামুল্যে অথবা ইএমআই (মাসিক কিস্তিতে) সিস্টেমে পাবেন একটি স্মার্ট স্বাস্থ্য কার্ড যা দিয়ে পরবর্তী এক বছর উক্ত হাসপাতালে বিভিন্ন রকম স্বাস্থ্য পরিষেবা উপভোগ করতে পারবেন।",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    RoundButton(
                      name: "Learn More",
                      onpress: () {},
                      color: buttonColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            SeeAll(
              text: 'Committee',
              onpress: () {},
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: height * 0.12,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: _doctorsData.doctorList.length,
                    itemBuilder: (context, index) {
                      return DoctorsList(

                        name: _doctorsData.doctorList[index]["name"],
                        profession: _doctorsData.doctorList[index]["profession"],
                        image: _doctorsData.doctorList[index]["image"],
                        phone: _doctorsData.doctorList[index]["phone"], onpress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ApointDetails()));
                      },
                      );
                    }),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            HeathCard(
              subtext: 'Free health card for sodesh',
              ontap: () {},
            ),
            HeathCard(
              subtext: 'EMI health card for sodesh',
              ontap: () {},
            ),
            SizedBox(
              height: height * 0.03,
            ),
            SeeAll(
              text: 'Notice & Update',
              onpress: () {},
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: height * 0.12,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return DoctorsVideo();
                    }),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                      top: 10, left: 20, right: 20, bottom: 20),
                  child: Column(
                    children: [
                      Expanded(
                        child: Text(
                          "প্রতিটা গ্রাম এবং শহরের প্রত্যেক কমিউনিটিতে একজন করে উদ্যোক্তা তৈরীর লক্ষে কাজ শুরু করেছে নগদ এবং মাই স্মার্ট হেলথকেয়ার লিমিটেড। উদ্যোক্তা হতে আগ্রহীদের সকল রকম ট্রেনিং এবং প্রয়োজনে আমাদের সহযোগী এনজিও পার্টনার থেকে উদ্যোক্তা ঋণের ব্যবস্থা করে দেওয়া হবে। আপনি আমাদের সাথে কাজ করতে চাইলে নিবন্ধন করুন।",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      RoundButton(
                        name: "Agent Registration",
                        onpress: () {},
                        color: buttonColor,
                      )
                    ],
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
