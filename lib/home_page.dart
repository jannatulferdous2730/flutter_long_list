import 'dart:core';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //generate a list
  final products = List<String>.generate(100,(int index) => "Contact $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Long List"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            iconColor: Colors.teal,
            leading: Icon(Icons.person),
            title: Text(products[index]),
            onTap: (){
              Fluttertoast.showToast(msg: "Hey" + products[index]);
            },
          );

      },),
    );
  }
}
