import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sodesh_smart_healthcare/src/common_widgets/text_form_field.dart';
import 'package:sodesh_smart_healthcare/src/contstants/app_color.dart';
import 'package:sodesh_smart_healthcare/src/features/authentication/screens/setting/widget/text_widget.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

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
                    "Profile Setting",
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
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                              "https://scontent.fdac4-1.fna.fbcdn.net/v/t39.30808-6/359379744_1670308010049866_4802363250202591408_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeF2GZ7pNyjfPcsXp88GwyQfd8lpX2KM6rp3yWlfYozqugi7_sglBYPVNk5NAFw3hz6-PurQc3XrU2na0A_pCgnv&_nc_ohc=b1ZcvW6RN4gAX9sZvgy&_nc_zt=23&_nc_ht=scontent.fdac4-1.fna&oh=00_AfCzUj4rEp63JkSYvVdA4EHywha_cY9m4VjW5UOy-cGPgg&oe=65BE2692",
                            ),
                          ),
                          Positioned(
                            right: 1,
                              bottom: 10,
                              child: CircleAvatar(
                                radius: 12,
                                  backgroundColor: buttonColor,
                                  child: Icon(Icons.add_a_photo_outlined,color: Colors.white,size: 15,)))
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text("Md. Raju",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    name: 'Email address',
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TextFormCustom(hintName: "Enter your email"),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TextWidget(
                    name: 'First Name',
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TextFormCustom(hintName: "Enter your name"),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TextWidget(
                    name: 'Last Name',
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TextFormCustom(hintName: "Enter your name"),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TextWidget(
                    name: 'Mobile Number',
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TextFormCustom(hintName: "Enter your mobile number"),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TextWidget(
                    name: 'Location',
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TextFormCustom(hintName: "Enter your location"),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
