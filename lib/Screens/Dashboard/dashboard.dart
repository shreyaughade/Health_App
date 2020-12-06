import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/ID/id_screen1.dart';
import 'package:flutter_auth/Screens/ID/id_screen2.dart';
import 'package:flutter_auth/Screens/ID/id_screen3.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      SizedBox(height: 6.0),
      Padding(
          padding: EdgeInsets.fromLTRB(17, 5, 1, 1),
          child: Text(
            "Today's meals",
            style: TextStyle(
                fontSize: 22,
                color: Colors.red[900],
                fontWeight: FontWeight.bold),
          )),
      SizedBox(height: 15.0),
      Padding(
          padding: EdgeInsets.fromLTRB(17, 5, 1, 1),
          child: Text(
            "Below 18.5:",
            style: TextStyle(
                fontSize: 20,
                color: Colors.red[900],
                fontWeight: FontWeight.bold),
          )),
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: FittedBox(
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
            child: Row(
              children: <Widget>[
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 10),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/images/hn3.jpeg'),
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        children: [Text('Breakfast')],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 2, 1, 1),
                        child: Image(
                          image: AssetImage('assets/images/star.png'),
                          height: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 10),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/images/hn6.jpeg'),
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(12, 10, 10, 2),
                          child: Text(
                            "Lunch",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red[900],
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 2, 1, 1),
                        child: Image(
                          image: AssetImage('assets/images/star.png'),
                          height: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 10),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: GestureDetector(
                            child: Image(
                              image: AssetImage('assets/images/hn2.jpg'),
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, IDcard.id);
                            }),
                      ),
                      Padding(
                          //padding: const EdgeInsets.all(1.0),
                          padding: EdgeInsets.fromLTRB(12, 10, 10, 2),
                          child: Text(
                            "Dinner",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red[900],
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 2, 1, 1),
                        child: Image(
                          image: AssetImage('assets/images/star.png'),
                          height: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(height: 2.0),
      Padding(
          padding: EdgeInsets.fromLTRB(17, 5, 1, 1),
          child: Text(
            "Between 18.5 and 25.9:",
            style: TextStyle(
                fontSize: 20,
                color: Colors.red[900],
                fontWeight: FontWeight.bold),
          )),
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: FittedBox(
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
            child: Row(
              children: <Widget>[
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 10),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: GestureDetector(
                          child: Image(
                            image: AssetImage('assets/images/hn4.jpeg'),
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, IDcard2.id);
                          },
                        ),
                      ),
                      Padding(
                          //padding: const EdgeInsets.all(1.0),
                          padding: EdgeInsets.fromLTRB(12, 10, 10, 2),
                          child: Text(
                            "Breakfast",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red[900],
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 2, 1, 1),
                        child: Image(
                          image: AssetImage('assets/images/star.png'),
                          height: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 10),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: GestureDetector(
                          child: Image(
                            image: AssetImage('assets/images/hn1.jpg'),
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, IDcard3.id);
                          },
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(12, 10, 10, 2),
                          child: Text(
                            "Lunch",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red[900],
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 2, 1, 1),
                        child: Image(
                          image: AssetImage('assets/images/star.png'),
                          height: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 10),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: GestureDetector(
                            child: Image(
                              image: AssetImage('assets/images/hn5.jpeg'),
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, IDcard.id);
                            }),
                      ),
                      Padding(
                          //padding: const EdgeInsets.all(1.0),
                          padding: EdgeInsets.fromLTRB(12, 10, 10, 2),
                          child: Text(
                            "Dinner",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red[900],
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 2, 1, 1),
                        child: Image(
                          image: AssetImage('assets/images/star.png'),
                          height: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(height: 2.0),
      Padding(
          padding: EdgeInsets.fromLTRB(17, 5, 1, 1),
          child: Text(
            "Between 25 and 29.9:",
            style: TextStyle(
                fontSize: 20,
                color: Colors.red[900],
                fontWeight: FontWeight.bold),
          )),
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: FittedBox(
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
            child: Row(
              children: <Widget>[
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 10),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/images/hn3.jpeg'),
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                          //padding: const EdgeInsets.all(1.0),
                          padding: EdgeInsets.fromLTRB(12, 10, 10, 2),
                          child: Text(
                            "Breakfast",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red[900],
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 2, 1, 1),
                        child: Image(
                          image: AssetImage('assets/images/star.png'),
                          height: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 10),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/images/hn6.jpeg'),
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(12, 10, 10, 2),
                          child: Text(
                            "Lunch",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red[900],
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 2, 1, 1),
                        child: Image(
                          image: AssetImage('assets/images/star.png'),
                          height: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 10),
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/images/hn2.jpg'),
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                          //padding: const EdgeInsets.all(1.0),
                          padding: EdgeInsets.fromLTRB(12, 10, 10, 2),
                          child: Text(
                            "Dinner",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red[900],
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 2, 1, 1),
                        child: Image(
                          image: AssetImage('assets/images/star.png'),
                          height: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
