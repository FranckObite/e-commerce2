import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports

import 'package:franckapp/componets/horyzontal_listview.dart';
import 'package:franckapp/componets/Products.dart';
import 'pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/image.jpeg"),
          AssetImage("images/imagees.jpeg"),
          AssetImage("images/images101.jpeg"),
          AssetImage("images/imags.jpeg")
        ],
        autoplay: true,
        //animationCurve: Curves.fastOutSlowIn,
        //animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.red,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          //elevation: 0.0
          backgroundColor: Colors.red,
          title: Text('obiStyle'),
          actions: [
            new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            new IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            )
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: [
              //hearder
              new UserAccountsDrawerHeader(
                accountName: Text("Franck Obité"),
                accountEmail: Text("obitefrank@gmail.com"),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ),
                decoration: new BoxDecoration(color: Colors.red),
              ),

              //body

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Home Page"),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(" Mon Compte"),
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Mes Commandes"),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Cart()));
                },
                child: ListTile(
                  title: Text(" Panier"),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(" Mes Favories"),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(" Paramettre"),
                  leading: Icon(Icons.settings, color: Colors.grey),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("A propos"),
                  leading: Icon(Icons.help, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        body: new Column(
          children: [
            //image carousel begins here

            image_carousel,
            //padding widget
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Toutes Catégories"),
            ),
            //horizontal list view begins here
            HoryzontalList(),
            //padding widget
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Text("Produit recents"),
            ),
            //Grid view

            Flexible(
              child: Products(),
            )
          ],
        ));
  }
}
