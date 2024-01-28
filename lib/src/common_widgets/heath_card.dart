import 'package:flutter/material.dart';
class HeathCard extends StatelessWidget {
 const HeathCard({super.key, this.text, required this.subtext, required this.ontap});
final String? text;
final String subtext;
final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  SizedBox(
      height: height * 0.1,
      width: width * 0.9,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        color: Color(0xffECF8F9),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.stars,size: 50,color: Colors.black54,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                   text?? "HEATHCARD",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(subtext),
                ],
              ),
              InkWell(
                onTap: ontap,
                child: SizedBox(
                  height: height * 0.07,
                  width: width*0.08,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.black,
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
