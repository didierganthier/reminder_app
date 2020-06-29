import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ReminderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue[200],
                    Colors.blue[300],
                    Colors.blue[400]
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.mirror
                )
              ),
            ),
          ),
          Positioned(
            top: 62,
            left: 24,
            right: 24,
            child: Container(
              height: 38,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 32,
            top: 160,
            child: Container(
              height: 270,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Daily", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48)),
                  Text("Reminders", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48)),
                  SizedBox(height: 10,),
                  Text("TODAY", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 130,
            bottom: 0,
            top: 340,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(16))
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 110,
            bottom: 0,
            top: 356,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(16))
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 80,
            bottom: 0,
            top: 372,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(16))
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.red[300]
      ),
    );
  }
}
