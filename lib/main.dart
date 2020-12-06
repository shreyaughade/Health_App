import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Cart/cart_main.dart';
import 'package:flutter_auth/Screens/Dashboard/dashboard_main.dart';
import 'package:flutter_auth/Screens/ID/id_screen1.dart';
import 'package:flutter_auth/Screens/ID/id_screen2.dart';
import 'package:flutter_auth/Screens/ID/id_screen3.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/BMI/bmi_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_auth/Screens/Cart/cart.dart';
import 'package:flutter_auth/Screens/Cart/dish.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Product(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'HealthNest',
          theme: ThemeData(
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: WelcomeScreen.id,
          routes: {
            WelcomeScreen.id: (context) => WelcomeScreen(),
            LoginScreen.id: (context) => LoginScreen(),
            SignUpScreen.id: (context) => SignUpScreen(),
            BmiScreen.id: (context) => BmiScreen(),
            MyDashboard.id: (context) => MyDashboard(),
            IDcard.id: (context) => IDcard(),
            IDcard2.id: (context) => IDcard2(),
            IDcard3.id: (context) => IDcard3(),
            CartScreen.id: (context) => CartScreen(),
          }),
    );
  }
}
