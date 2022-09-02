import 'package:flutter/material.dart';
import './special_card.dart';

class maindrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      Container(
        color: Color.fromARGB(255, 207, 207, 233),
        height: 210,
        child: Column(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromARGB(255, 16, 15, 15),
                    width: 2,
                  ),
                ),
                margin: EdgeInsets.only(
                  top: 39,
                  bottom: 6,
                ),
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage('images/t.jpeg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: Center(
                child: Text('TANISH SANDHU',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
              ),
            ),
            Center(
              child: Text('2021UEA6544',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            )
          ],
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          spcard('Profile'),
          spcard('Attendance'),
          spcard('Time Table'),
          spcard('To Do'),
          spcard('Notices'),
          spcard('Syllabus'),
          spcard('Previous Year Papers'),
          spcard('Courses'),
          spcard('Results'),
          spcard('Societies'),
          spcard('Events'),
          spcard('Faculty Time Table'),
          spcard('About Us'),
          spcard('FAQs'),
          SizedBox(height: 10),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 100.0, right: 100),
              child: Container(
                height: 40,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)),
                  color: Colors.redAccent[400],
                  child: Center(
                      child: Text(
                    'Log Out',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    ]));
  }
}
