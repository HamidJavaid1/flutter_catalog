import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_catalog/widgets/theme.dart";
import "package:velocity_x/velocity_x.dart";

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar:AppBar(
        
         title:"Cart".text.make(),
        backgroundColor:Colors.blue,
        centerTitle: true,
      )
      
    );
  }
}