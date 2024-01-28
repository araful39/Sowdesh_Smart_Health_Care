import 'package:flutter/material.dart';
import 'package:sodesh_smart_healthcare/src/common_widgets/heath_card.dart';
import 'package:sodesh_smart_healthcare/src/common_widgets/roundButton.dart';
import 'package:sodesh_smart_healthcare/src/common_widgets/textButton.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
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
                  RoundButton(name: "Learn More", onpress: () {})
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Committee",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      CustomTextButton(
                        text: 'See all',
                        onpress: () {},
                      )
                    ],
                  ),
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
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: width * 0.6,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 2),
                                    )
                                  ]),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.network(
                                      "data:image/jpeg;base64,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"),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Dr.Preater Parker",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Physiatrist"),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            color: Colors.indigo,
                                          ),
                                          Text(
                                            "01741754235",
                                            style:
                                                TextStyle(color: Colors.indigo),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
               HeathCard(subtext: 'Free health card for sodesh', ontap: () {  },),
               HeathCard(subtext: 'EMI health card for sodesh', ontap: () {  },),
              ],
            ),
          )
        ],
      ),
    );
  }
}
