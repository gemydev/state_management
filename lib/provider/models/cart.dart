import 'package:flutter/foundation.dart';
import 'package:management_state/provider/models/item.dart';

class Cart extends ChangeNotifier {
  List<Item> _selectedItems = [];        // selected items what we used in checkoutPage
  double _totalPrice = 0.0;
  int itemCount =0;

  void add(Item item) {
    _selectedItems.add(item);
    _totalPrice += item.price;
    notifyListeners();
  }

  void test (Item selectedItem){
    for(int index = 0 ; index <_selectedItems.length ; index++){
      if(selectedItem.title == _selectedItems[index].title){
        itemCount++;
      } else{
        return null;
      }
    }
    notifyListeners();
  }

  void remove(Item item) {
    _totalPrice -= item.price;
    _selectedItems.remove(item);
    notifyListeners();
  }

  int get count {
    return _selectedItems.length;
  }

  double get totalPrice {
    return _totalPrice;
  }

  List<Item> get basketItems {
    return _selectedItems;
  }
}