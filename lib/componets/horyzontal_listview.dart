import 'package:flutter/material.dart';

class HoryzontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
          Categories(
              image_location: "images/image.jpeg", image_caption: "Tshirt"),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Categories(
      {super.key, required this.image_location, required this.image_caption});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                "images/images101.jpeg",
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption, style: new TextStyle(fontSize: 12.0,) ),
              )),
        ),
      ),
    );
  }
}
