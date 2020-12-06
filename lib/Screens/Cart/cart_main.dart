import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart.dart';
import 'package:flutter_auth/components/cart_item.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth/Screens/Cart/checkout.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  final _auth = FirebaseAuth.instance;
  static const String id = 'cart_screen';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.account_circle_sharp),
              onPressed: () async {
                await _auth.signOut();
              }),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx, i) => CartPdt(
                    cart.items.values.toList()[i].id,
                    cart.items.keys.toList()[i],
                    cart.items.values.toList()[i].price,
                    cart.items.values.toList()[i].quantity,
                    cart.items.values.toList()[i].name)),
          ),
          RoundedButton(
            text: "CHECKOUT",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CheckoutScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
