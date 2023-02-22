import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({super.key});

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "tradi",
      "picture": "images/images.jpeg",
      "prix": 85,
      "size": "M",
      "color": "Red",
      "quantité": 1,
    },
    {
      "name": "kita",
      "picture": "images/imags.jpeg",
      "prix": 815,
      "size": "M",
      "color": "red",
      "quantité": 1,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return new Single_cart_product(
              cart_produst_name: Products_on_the_cart[index]["name"],
              cart_prod_picture: Products_on_the_cart[index]["picture"],
              cart_prod_prix: Products_on_the_cart[index]["prix"],
              cart_prod_size: Products_on_the_cart[index]["size"],
              cart_produst_color: Products_on_the_cart[index]["color"],
              cart_prod_quantite: Products_on_the_cart[index]["quantité"]);
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_produst_name;
  final cart_prod_picture;
  final cart_prod_prix;

  final cart_prod_size;
  final cart_produst_color;
  final cart_prod_quantite;

  const Single_cart_product(
      {super.key,
      required this.cart_produst_name,
      required this.cart_prod_picture,
      required this.cart_prod_prix,
      required this.cart_prod_size,
      required this.cart_produst_color,
      required this.cart_prod_quantite});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 80.0,
        ),
        title: new Text("cart_prod_name"),
        subtitle: new Column(
          children: [
            //Row inside Column
            new Row(
              children: [
                //this section for size of the product
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text("size:")),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                //*******this sections is for the product color********* */
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_produst_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),

//*******this section is for the products pric"e */
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_prix}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
