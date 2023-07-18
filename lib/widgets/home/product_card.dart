import 'package:flutter/material.dart';
import 'package:store_app/models/products.dart';
import 'package:store_app/constants.dart';

class ProductCard extends StatelessWidget{
  ProductCard({
    Key? key, required this.itemindex,required this.product,required this.press
  }) : super(key: key);

  final int itemindex;
  final Product product;
  final  Function press;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding/2,
      ),
      height: 200,
      //color: Colors.green,
      child: InkWell(
        onTap: ()=> press(),
        child:    Stack(
          children: [
            Container(
              height: 166,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(top:27),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,15),
                      blurRadius: 25,
                      color: Colors.black12,
                    ),
                  ]
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(bottom:50),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 160,
              width: 200,
              child: Image.asset(product.image/*fit:BoxFit.cover*/),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(left: 150,top: 50),
              height: 136,
              width: size.width - 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(),

                  Text(product.title,style: TextStyle(fontSize: 25),),
                  Text(product.subtitle,style: TextStyle(fontSize: 18),),
                  Container(
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Text("السغر: ${product.price}"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

}