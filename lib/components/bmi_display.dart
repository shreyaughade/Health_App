import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Dashboard/dashboard_main.dart';
import 'package:flutter_auth/components/reusable_card.dart';
import 'package:flutter_auth/components/rounded_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFb71c1c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Colors.white,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResult,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  RoundedButton(
                    text: "RE_CALCULATE BMI",
                    color: Color(0xFFb71c1c),
                    press: () {
                      Navigator.pop(context);
                    },
                  ),
                  RoundedButton(
                    text: "Proceed to Dashboard",
                    color: Color(0xFFb71c1c),
                    press: () {
                      Navigator.pushNamed(context, MyDashboard.id);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
