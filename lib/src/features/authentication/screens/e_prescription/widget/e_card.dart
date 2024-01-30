import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sodesh_smart_healthcare/src/contstants/images.dart';

class Ecard extends StatelessWidget {
  const Ecard({super.key, required this.name, required this.imagePath});
  final String name;
  final String imagePath;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: double.infinity,
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Amoxilillin 250mg",style: TextStyle(fontWeight: FontWeight.bold),),
                    Spacer(

                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      color: Color(0xffBCE9D3),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 7),
                        child: Text("New"),
                      ),
                    ),
                    CircleAvatar(
                      maxRadius: 15,
                      backgroundColor: Colors.black26,
                      child: Icon(Icons.calendar_month_outlined,color: Colors.white,size: 15,),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 40,width: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(imagePath),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name),
                        Text("21 Jan 2023",style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
