import 'package:flutter/material.dart';
import 'package:franckapp/main.dart';

import '../componets/Products.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_nouveau_prix;
  final product_detail_ancien_prix;
  final product_detail_picture;

  const ProductDetails(
      {super.key,
      required this.product_detail_name,
      required this.product_detail_nouveau_prix,
      required this.product_detail_ancien_prix,
      required this.product_detail_picture});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        //elevation: 0.0
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: Text('obiStyle')),
        actions: [
          new IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),

      //body
      body: new ListView(
        children: [
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                //permet d'acceder à l'élément produc_detail_picture qui se trouve dans un widget
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                  title: new Row(
                    children: [
                      Expanded(
                        child: new Text(
                          "\$${widget.product_detail_ancien_prix}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                          child: new Text(
                        "\$${widget.product_detail_nouveau_prix}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // ---------------the first buttons ---------
          Row(
            children: [
              // ---------------the size buttons ---------

              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text('Chose the size'),
                          actions: [
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: new Text("Size"),
                    ),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),

              // ---------------the size buttons ---------

              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Couloeur"),
                          content: new Text('Chose the color'),
                          actions: [
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: new Text("Couleur"),
                    ),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              // ---------------the size buttons ---------

              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Quantité"),
                          content: new Text('Chose the quantity'),
                          actions: [
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: new Text("Quantité"),
                    ),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
            ],
          ),

          // ---------------the second buttons ---------
          Row(
            children: [
              // ---------------the size buttons ---------

              Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.red,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: new Text('Acheter Maintenant'))),
              new IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  )),
              new IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ))

              // ---------------the size buttons ---------

              // ---------------the size buttons ---------
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text('ddddddddddddd'),
          ),
          Divider(),
          new Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5, 5.0, 5.0),
                child: new Text(
                  'Product name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              //remember to ceate the product brand
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),
          //remember to ceate the product brand
          new Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5, 5.0, 5.0),
                child: new Text(
                  'marque de produit',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Marque x"),
              )
            ],
          ),
          //add to ceate the product condition
          new Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5, 5.0, 5.0),
                child: new Text(
                  'Product Condition',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("new"),
              )
            ],
          ),
          Divider(),
          Padding(padding: const EdgeInsets.all(8.0)),

          new Text("Articles Similaires"),
          //SIMILAR PRODUCTION SECTION
          Container(
            height: 360.0,
            child: Similar_procuts(),
          )
        ],
      ),
    );
  }
}

class Similar_procuts extends StatefulWidget {
  @override
  State<Similar_procuts> createState() => _Similar_procutsState();
}

class _Similar_procutsState extends State<Similar_procuts> {
  @override
  var product_list = [
    {
      "name": "tradi",
      "picture": "images/images.jpeg",
      "ancien_prix": 120,
      "prix": 85,
    },
    {
      "name": "pagne",
      "picture": "images/imagesYorouba.jpeg",
      "ancien_prix": 100,
      "prix": 50,
    },
    {
      "name": "pagne",
      "picture": "images/imagesYorouba.jpeg",
      "ancien_prix": 100,
      "prix": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_Single_prod(
              produst_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_ancien_prix: product_list[index]['ancien_prix'],
              prod_prix: product_list[index]['pix']);
        });
  }
}

class Similar_Single_prod extends StatelessWidget {
  final produst_name;
  final prod_picture;
  final prod_ancien_prix;
  final prod_prix;

  const Similar_Single_prod(
      {super.key,
      required this.produst_name,
      required this.prod_picture,
      required this.prod_ancien_prix,
      required this.prod_prix});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Hero(
        tag: new Text("  Hero 1"),
        child: Material(
            child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(

              //here we are passed the values of product to the product detail
              builder: (context) => new ProductDetails(
                  product_detail_name: produst_name,
                  product_detail_nouveau_prix: prod_prix,
                  product_detail_ancien_prix: prod_ancien_prix,
                  product_detail_picture: prod_picture))),
          child: GridTile(
              footer: Container(
                  color: Colors.white,
                  child: new Row(
                    children: [
                      Expanded(
                        child: Text(
                          produst_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                      new Text(
                        "\$${prod_prix}",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              )),
        )),
      ),
    );
  }
}
