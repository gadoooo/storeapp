import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/main.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:store_app/widgets/details/details_body.dart';
import 'package:store_app/models/products.dart';


class DetailsScreen extends StatelessWidget{
  final Product product;

  const DetailsScreen({super.key, required this.product});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }
}


AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kBackgroundColor,
    leading: IconButton(icon: Icon(Icons.arrow_back),color: Colors.black,
    onPressed: (){
      Navigator.pop(context);
    },
    ),
    elevation: 0,
  );
}