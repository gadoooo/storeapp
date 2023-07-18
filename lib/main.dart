import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/screens/home_screen.dart';

void main() {
  runApp(StoreApp());
}


class StoreApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primaryColor: kPrimaryColor,
     ),
    /* localizationsDelegates: [
       GlobalCupertinoLocalizations.delegate,
       GlobalMaterialLocalizations.delegate,
       GlobalWidgetsLocalizations.delegate,
     ],
     supportedLocales: [Locale("ar", "AE")],
     locale: Locale("ar", "AE"),*/
     home: HomeScreen(),
     );
  }

}