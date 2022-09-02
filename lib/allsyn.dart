import 'package:flutter/material.dart';
import './syncfusion.dart';

class allsyn extends StatelessWidget {
  String t1;
  String t2;
  double x;

  allsyn(this.t1, this.t2, this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      height: 200,
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          syncfusion(x),
          SizedBox(height: 6),
          Text(
            t1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
          SizedBox(height: 5),
          Text(t2),
        ],
      ),
    );
  }
}
