import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:management_state/provider/models/cart.dart';
import 'package:management_state/provider/models/item.dart';

import 'package:management_state/provider/screens/checkout_page.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          accentColor: Color(0xff6983aa), primaryColor: Color(0xff30475e)),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> items = Item().itemsList();

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, cart, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Shopping Cart',
            style: TextStyle(fontSize: 23),
          ),
          actions: <Widget>[
            FittedBox(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => CheckoutPage()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Center(child: Text(cart.count.toString())),
                  )
                ],
              ),
            )
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 5, left: 5),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 1,
                color: Theme.of(context).accentColor,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black, width: 0.4),
                ),
                child: ListTile(
                  title: Text(
                    items[index].title,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  subtitle: Text(
                    items[index].price.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      cart.add(items[index]);
                      cart.test(items[index]);
                      print(cart.itemCount);
                    },
                  ),
                ),
              );
            },
          ),
        ),
      );
    });
  }
}
