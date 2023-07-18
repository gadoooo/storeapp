import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/products.dart';
import 'package:store_app/widgets/details/details_body.dart';
import 'product_card.dart';
import 'package:store_app/screens/details_screen.dart';

class HomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding/2,
          ),
            Expanded(
                child: Stack(
                  children: [
                    Container(
                      margin:EdgeInsets.only(top: 70),
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    ListView.builder(
                        key: key,
                        itemCount: products.length,
                        itemBuilder: (context , index)=>ProductCard( itemindex: index, product: products[index],
                          press: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index])));
                          },
                        ),
                    )

                  ],
                ),
            )
        ],
      ),
  );
  }
}


