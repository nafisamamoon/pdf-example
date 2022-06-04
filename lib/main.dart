import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myui/food-ui/home.dart';
import 'package:myui/getx/view/home.dart';
import 'package:myui/pdf/pdf.dart';
import 'package:myui/provider/cart.dart';
import 'package:myui/provider/home.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context){
        return Cart();
      },
      child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arabic Food',
      theme: ThemeData(
       visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.indigo,
      ),
      //for food ui
      //home: MyHomePage(),
      //for provider shopping cart
     // home: home(),
     //for getx
     //home: Home(),
     home: Pdf(),
    ),
      );
  }
}

