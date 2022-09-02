import 'package:flutter/material.dart';
import 'package:nsutx/allsyn.dart';
import 'package:nsutx/syncfusion.dart';
import './icon.dart';
import 'package:intl/intl.dart';
import './main_drawer.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            currentIndex: index,
            onTap: (indx) {
              setState(() {
                index = indx;
              });
            },
            items: [
              BottomNavigationBarItem(
                label: 'Time-Table',
                icon: Icon(
                  Icons.schedule,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                label: 'Atttendance',
                icon: Icon(
                  Icons.how_to_reg,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                label: 'To-Do',
                icon: Icon(
                  Icons.done_all,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                label: 'Notices',
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
              ),
            ]),
        extendBodyBehindAppBar: true,
        /*appBar: AppBar(
          toolbarHeight: 32,
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: true,
        ),*/
        drawer: maindrawer(),
        body: SafeArea(
          top: false,
          child: ListView(
            children: [
              Container(
                height: 350,
                child: Stack(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'images/j.jpg',
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      ),
                    ),
                    Positioned(
                      child: AppBar(
                        toolbarHeight: 32,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        automaticallyImplyLeading: true,
                      ),
                    ),
                    Positioned(
                      left: 140,
                      bottom: 40,
                      child: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage('images/t.jpeg'),
                      ),
                    ),
                    Positioned(
                        right: 20,
                        bottom: 38,
                        child: Text(
                          'Semester-3',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Positioned(
                      left: 32,
                      bottom: 30,
                      child: Column(
                        children: [
                          Text(
                            DateFormat('EEEE').format(DateTime.now()),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            DateFormat('d-MMM-yyyy').format(DateTime.now()),
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    /* Positioned(
                        left: 3,
                        top: 10,
                        child: IconButton(
                            icon: Icon(Icons.stacked_line_chart, size: 30),
                            onPressed: () {
                              //scaffoldKey.currentState?.openEndDrawer();
                              // Scaffold.of(context).openDrawer();
        
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => maindrawer()));
                            })),*/
                    Positioned(
                      right: -3,
                      top: 7,
                      child: IconButton(
                        icon: Icon(Icons.info_outline, size: 30),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 210,
                width: 5,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 9,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    allsyn('EAEPC05', ' Signal and\n   Systems', 90),
                    allsyn('EAECP06', '  Probability\n  Theory and...', 35),
                    allsyn('EAEPC07', 'Microelectronic\n           s', 88),
                    allsyn('EAEPC08', 'Digital Ciruits\n and Systems', 99),
                    allsyn('EAMTC04', '  Mathematics\n   for Machine...', 73),
                  ]),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(width: 25),
                  icons('profile', Icons.person),
                  SizedBox(width: 20),
                  icons('Attendance', Icons.how_to_reg),
                  SizedBox(width: 20),
                  icons('ToDo', Icons.done_all),
                  SizedBox(width: 20),
                  icons('Time Table', Icons.schedule),
                  SizedBox(width: 25)
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(width: 25),
                  icons('Syllabus', Icons.menu_book),
                  SizedBox(width: 20),
                  icons('   Previous\nYear Papers', Icons.library_books),
                  SizedBox(width: 20),
                  icons('Result', Icons.insert_chart),
                  SizedBox(width: 20),
                  icons('Courses', Icons.format_list_bulleted),
                  SizedBox(width: 25)
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(width: 45),
                  icons('Societies', Icons.style),
                  icons('Events', Icons.event_available),
                  SizedBox(width: 45),
                ],
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.all(7),
                /* decoration: BoxDecoration(borderRadius: BorderRadius.circular(26),
                 color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                   offset: Offset(2.0, 2.0),
                  ),
                ]),*/
                // padding: EdgeInsets.symmetric(horizontal: 8),
                height: 200,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    elevation: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'No Class Left Today',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            alignment: Alignment.center),
                        SizedBox(height: 8),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            DateFormat.MMMMEEEEd().format(DateTime.now()),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              child: Text(
                                '10:00\n  am',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 246, 51, 57),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(
                                    'Signal And Systems',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 246, 51, 57),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'EAEPC05\nSoven Kumar Dana\nRoom D-303',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
