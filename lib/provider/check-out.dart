import 'package:flutter/material.dart';
import 'package:myui/provider/cart.dart';
import 'package:provider/provider.dart';
class CheckOut extends StatefulWidget {
  const CheckOut({ Key? key }) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<Cart>(builder: (context,cart,child){
        return ListView.builder(
        itemCount: cart.basket.length,
        itemBuilder: (context,i){
          return Card(
            child: ListTile(
              title: Text('${cart.basket[i].name}'),
              trailing: IconButton(onPressed: (){
                cart.remove(cart.basket[i]);
              }, 
              icon: Icon(Icons.remove)),
            ),
          );
        }
        );
      },)
    );
  }
}