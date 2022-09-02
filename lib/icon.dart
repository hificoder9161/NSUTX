import 'package:flutter/material.dart';

class icons extends StatelessWidget {
  String text;
  IconData iconname;
  icons(this.text, this.iconname);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: Icon(iconname),
            onPressed: () {},
          ),
        ),
        Text(text),
      ],
    );
  }
}
