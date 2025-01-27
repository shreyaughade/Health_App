import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: -94,
            left: 99,
            child: Image.asset(
              "assets/images/login_bot.jpg",
              width: size.width * 1.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
