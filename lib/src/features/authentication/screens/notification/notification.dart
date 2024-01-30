import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sodesh_smart_healthcare/src/features/authentication/screens/notification/widget/card_widget.dart';
import 'package:sodesh_smart_healthcare/src/features/authentication/screens/notification/widget/text_widget.dart';

import '../profile/widget/managecard.dart';

class Notices extends StatelessWidget {
  const Notices({super.key});

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
                SizedBox(
                  height: height * 0.04,
                ),
                TextWidget(name: 'Today'),
                SizedBox(
                  height: height * 0.02,
                ),
                CardWidgetNotice(
                  name: 'Reminder for appointment',
                  icon: Icon(
                    Icons.history,
                    size: 18,
                  ),
                  color: Colors.deepPurple.shade300,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CardWidgetNotice(
                  name: 'Appoint Set',
                  icon: Icon(
                    Icons.calendar_month,
                    size: 18,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CardWidgetNotice(
                  name: 'Appoint Cancel',
                  icon: Icon(
                    Icons.calendar_month_outlined,
                    size: 18,
                  ),
                  color: Colors.red,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                TextWidget(name: 'Past Week'),
                SizedBox(
                  height: height * 0.03,
                ),
                CardWidgetNotice(
                  name: 'Reminder for appointment',
                  icon: Icon(
                    Icons.history,
                    size: 18,
                  ),
                  color: Colors.deepPurple.shade300,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CardWidgetNotice(
                  name: 'Appoint Set',
                  icon: Icon(Icons.history, size: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
