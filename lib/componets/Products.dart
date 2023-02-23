import 'package:flutter/material.dart';
import 'package:franckapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProState createState() => _ProState();
}

class _ProState extends State<Products> {
  var product_list = [
    {
      "name": "tradi",
      "picture": "images/imagesYorouba.jpeg",
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
          return Single_prod(
              produst_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_ancien_prix: product_list[index]['ancien_prix'],
              prod_prix: product_list[index]['prix']);
        });
  }
}

class Single_prod extends StatelessWidget {
  
  final produst_name;
  final prod_picture;
  final prod_ancien_prix;
  final prod_prix;

  const Single_prod(
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
