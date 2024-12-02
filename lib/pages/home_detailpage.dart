import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_catalog/models/catalog.dart';

import 'package:meta/meta.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    Key? key,
    required this.catalog,
    required Required Required,
  }) : super(key: key);
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            catalog.price.text.bold.xl4.color(context.primaryColor).make(),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    context.colors.secondary,
                  ),
                  shape: MaterialStateProperty.all(StadiumBorder()),
                ),
                child: "Add to cart".text.white.make())
          ],
        ),
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Center(
              child: Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image)),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 25.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.primaryColor)
                        .bold
                        .make(),
                    catalog.desc.text
                        .color(context.primaryColor)
                        .bold
                        .xl
                        .textStyle(context.captionStyle)
                        .make(),
                    "Rebum sit diam ut sanctus tempor sit diam. rebum eos sea elitr consetetur aliquyam no nonumy. kasd rebum nonumy clita dolore vero. Stet duo sed takimata sadipscing dolor lorem. Sit sit voluptua lorem eos sea, et magna amet invidunt accusam at eos consetetur ipsum sea. Clita clita sanctus dolores dolor."
                        .text
                        .color(context.primaryColor)
                        .textStyle(context.captionStyle)
                        .bold
                        .make()
                        .p16(),
                  ],
                ).py32(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
