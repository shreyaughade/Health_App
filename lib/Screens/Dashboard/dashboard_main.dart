import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Cart/cart_main.dart';
import 'package:flutter_auth/Screens/Dashboard/dashboard.dart';
import 'package:flutter_auth/Screens/Cart/dish.dart';
import 'package:flutter_auth/Screens/Cart/cart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyDashboard extends StatefulWidget {
  static const String id = 'dashboard_screen';
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  final _auth = FirebaseAuth.instance;
  int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.shoppingCart),
            onPressed: () {
              Navigator.pushNamed(context, CartScreen.id);
            },
          ),
          IconButton(
              icon: Icon(Icons.account_circle_sharp),
              onPressed: ()async{
              await _auth.signOut();
              }),
        ],
        backgroundColor: Colors.red[900],
      ),
      body: Dashboard(),
    );
  }
}
