import 'package:flutter/foundation.dart';
import 'package:myui/provider/item.dart';
class Cart with ChangeNotifier{
List<Item> _items=[];
double _price=0.0;
void add(Item item){
_items.add(item);
_price+=item.price!;
notifyListeners();
}
int get count{
return _items.length;
}
double get totalPrice{
  return _price;
}
List<Item> get basket{
  return _items;
}
void remove(Item item){
_items.remove(item);
_price-=item.price!;
notifyListeners();
}
}