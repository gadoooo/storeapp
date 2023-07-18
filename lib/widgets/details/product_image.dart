import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget{
  const ProductImage({
    Key? key,required this.size,required this.image
  }) : super(key:key);

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: size.width *0.9,
        width: size.width * 0.7,
        //color: Colors.black,
        child: Container(
          height: size.width *0.7,
          width: size.width * 0.7,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,15),
                  blurRadius: 25,
                  color: Colors.black12,
                ),
              ]
          ),
          child: Image.asset(image),
        ),
      ),
    );
  }

}