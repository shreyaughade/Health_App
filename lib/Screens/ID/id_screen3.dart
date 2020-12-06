import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_auth/Screens/Cart/cart.dart';

class IDcard3 extends StatefulWidget {
  static const String id = 'id_screen3';
  @override
  _IDcard3State createState() => _IDcard3State();
}

class _IDcard3State extends State<IDcard3> {
  @override
  Widget build(BuildContext context) {
    final productId = '5';
    final prodName = "Veggie Nourish Bowl";
    final prodPrice = 299.0;
    final cart = Provider.of<Cart>(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: ListView(
            children: <Widget>[
              Container(
                height: 320,
                width: 420,
                child: Image.asset(
                  "assets/images/hn1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.indigo,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'A hearty bowl of veggies tossed in olive oil and vinaigrette dressing to nourish your soul. ',
                        style: TextStyle(
                          color: Colors.indigo,
                          letterSpacing: 2.0,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Nutritional Value Per 100g',
                        style: TextStyle(
                          color: Colors.indigo,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Calories : 150',
                        style: TextStyle(
                          color: Colors.indigo,
                          letterSpacing: 2.0,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Carbohydrates : 20.2g',
                        style: TextStyle(
                          color: Colors.indigo,
                          letterSpacing: 2.0,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Protein : 10.7g',
                        style: TextStyle(
                          color: Colors.indigo,
                          letterSpacing: 2.0,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          RaisedButton(
                            padding: EdgeInsets.fromLTRB(25, 12, 25, 12),
                            textColor: Colors.white,
                            color: Colors.red[900],
                            child: Text('Add To Cart',
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {
                              cart.addItem(productId, prodName, prodPrice);
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                          SizedBox(width: 50.0),
                          Text(
                            'Rs. 299/-',
                            style: TextStyle(
                              color: Colors.indigo,
                              letterSpacing: 2.0,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}