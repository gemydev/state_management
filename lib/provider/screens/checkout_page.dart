import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:management_state/provider/models/cart.dart';
import 'package:provider/provider.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Checkout Page ' , style: TextStyle(fontSize: 23),),
            centerTitle: true,
            actions: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text("${cart.count.toString()}"),
                ),
              )
            ],
          ),
          body: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 130,
                child: cart.basketItems.length == 0
                    ? Center(
                        child: Text(
                        'No items in your cart ...',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ))
                    : Padding(
                  padding: const EdgeInsets.only( right: 5 , left: 5 ),
                      child: ListView.builder(
                          itemCount: cart.basketItems.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 6,
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.black, width: 0.4),
                              ),
                              child: ListTile(
                                leading: Text(cart.itemCount.toString()),
                                title: Text(cart.basketItems[index].title),
                                subtitle: Text(
                                    cart.basketItems[index].price.toString()),
                                trailing: IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    cart.remove(cart.basketItems[index]);
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                    ),
              ),
              Container(
                color: Theme.of(context).primaryColor,
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Text(
                  "Total Price : ${cart.totalPrice} \$",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              )
            ],
          ),
        );
      },
    );
  }
}
