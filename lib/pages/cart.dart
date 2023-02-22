import 'package:flutter/material.dart';

//my imports

import 'package:franckapp/componets/cart_products.dart';


class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        //elevation: 0.0
        backgroundColor: Colors.red,
        title: Text('Mon Panier'),
        actions: [
          new IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      
      body: new Cart_products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
                child: ListTile(
              title: Text("Total"),
              subtitle: new Text("\$230"),
            )),
            Expanded(
                child: new MaterialButton(
              onPressed: () {},
              child: new Text(
                "Verifier",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ))
          ],
        ),
      ),
    );
  }
}
