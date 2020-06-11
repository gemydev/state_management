import 'package:flutter/material.dart';
import 'package:management_state/provider/models/cart.dart';
import 'package:management_state/provider/screens/items_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChangeNotifierProvider<Cart>(
      create: (context)=> Cart(),
        child: Home()
    ),
  ));
}
