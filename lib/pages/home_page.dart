import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/utills/routes.dart';
import 'package:flutter_catalog/widgets/homeWidgets/catalog_list.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/models/catalog.dart';

import '../widgets/homeWidgets/catalog_header.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    final catalogJson =
        await rootBundle.loadString("assets/Files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    print(productData);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        // Dark mode button color
        onPressed: () => Navigator.pushNamed(context, MyRoutes.Cartpage),
        child: Icon(
          CupertinoIcons.cart,
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,

        // Set the background color to blue
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
