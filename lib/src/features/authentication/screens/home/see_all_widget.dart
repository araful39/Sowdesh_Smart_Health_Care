import 'package:flutter/cupertino.dart';
import 'package:sodesh_smart_healthcare/src/common_widgets/textButton.dart';

class SeeAll extends StatelessWidget {
  SeeAll({super.key, required this.text, required this.onpress});
final String text;
final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
          CustomTextButton(
            text: 'See all',
            onpress:onpress,
          )
        ],
      ),
    );
  }
}
