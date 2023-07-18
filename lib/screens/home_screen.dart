import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: kPrimaryColor,
     appBar: homeAppBar(),
     body: HomeBody(),
   );
  }

  AppBar homeAppBar(){
   return AppBar(
       backgroundColor: kPrimaryColor,
       elevation: 0,
       title: Text("متجر الالكترونيات"),
       centerTitle: true,
       actions:[
         IconButton(icon: Icon(Icons.menu),onPressed: (){},alignment: Alignment.topLeft,)
       ]
   );
  }
}
