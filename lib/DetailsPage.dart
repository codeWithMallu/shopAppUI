import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  final BuildContext context;

  DetailsPage({this.img, this.title, this.price, this.context});
  @override
  Widget build(BuildContext context) {
    String tittle2 = title;
    tittle2 = "dada";
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          Text(img),
          Text(price),
        ],
      ),
    );
  }
}
