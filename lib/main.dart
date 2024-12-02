import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/loginpage.dart';
import 'package:flutter_catalog/utills/routes.dart';
import 'package:flutter_catalog/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.Cartpage,
      routes: {
        "/": (context) => loginpage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => loginpage(),
        MyRoutes.Cartpage: (context) => Cartpage(),
      },
    );
  }
}
