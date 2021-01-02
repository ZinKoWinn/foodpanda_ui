import 'package:flutter/material.dart';
import 'package:foodpanda_ui/model/shop.dart';
import 'package:foodpanda_ui/styles/common.dart';

class ShopListItem extends StatelessWidget {
  final Shop shop;

  const ShopListItem({Key key, this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 130,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 1,
        child: Row(
          children: [
            Image(
              image: NetworkImage(shop.imageUrl),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shop.name,
                    style: boldText,
                  ),
                  Text(
                    shop.type,
                    style: normalText,
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
