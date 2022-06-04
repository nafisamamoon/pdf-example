import 'package:flutter/material.dart';
import 'package:myui/provider/cart.dart';
import 'package:myui/provider/check-out.dart';
import 'package:myui/provider/item.dart';
import 'package:provider/provider.dart';
class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Item> items=[
    Item(name: 'samsung',price: 100),
      Item(name: 'apple',price: 200),
        Item(name: 'techno',price: 300),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(children: [
  IconButton(onPressed: (){
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CheckOut()));
          }, icon: Icon(Icons.add_shopping_cart)),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Consumer<Cart>(builder: (context,cart,child){
              return Text('${cart.count}');
            },),
          )
          ],)
        ],
      ),
      body:ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,i){
return Card(
  child: Consumer<Cart>(builder: (context,cart,child){
    return ListTile(
    title: Text('${items[i].name}'),
    trailing: IconButton(onPressed: (){
cart.add(items[i]);
    }, icon:Icon(Icons.add)),
  );
  },)
);
        }
        ) ,
    );
  }
}