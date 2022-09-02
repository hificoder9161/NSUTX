import 'package:flutter/material.dart';

class spcard extends StatelessWidget {
  String text;

  spcard(this.text);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.redAccent[400],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        margin: EdgeInsets.only(left: 15, right: 15, top: 15),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 12, left: 11),
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ),
            height: 42,
            width: double.infinity,
            // margin: EdgeInsets.only(left: 15, right: 15, top: 9),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(14),
                topEnd: Radius.circular(14),
              ),
              color: Colors.white,
            ),
          ),
        ));
  }
}
