import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'product_image.dart';
import 'color_dot.dart';
import 'package:store_app/models/products.dart';
class DetailsBody extends StatelessWidget{
  final Product product;

  const DetailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Column(
      children: [
       Stack(
         children:[
           Container(
             width: double.infinity,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(40),
                   bottomRight: Radius.circular(40),
                 ),
               color: kBackgroundColor,
             ),
             height: 500,
           ),
           Column(
             children: [
               ProductImage(size: size, image: product.image),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   colordot(fillcolor: Colors.green,isSelected: true),
                   colordot(fillcolor: Colors.red,isSelected:false),
                   colordot(fillcolor: Colors.blue,isSelected:false),
                   colordot(fillcolor: Colors.black,isSelected:false),
                 ],
               ),
               Container(
                 alignment: Alignment.bottomRight,
                 //margin: ,
                 child:
                 Text(product.title,style: TextStyle(fontSize: 25,color: Colors.black),),
               ),
               SizedBox(
                 height: 15,
               ),
               Container(
                 alignment: Alignment.bottomRight,
                 child:
                 Text("${product.price}",style: TextStyle(fontSize: 20,color: Colors.orange),),
               ),
             ],
           ),

        ]
       ),
        SizedBox(
          height: 15,
        ),
        Container(
          alignment: Alignment.bottomRight,
          child:
          Text(product.desc,style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
      ],
    );
  }

}



