import 'package:flutter/material.dart';
import 'package:foodpanda_ui/model/shop.dart';
import 'package:foodpanda_ui/widgets/shop-list.dart';

class ShopPage extends StatelessWidget {
  final List<Shop> items = Shop.getShopList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _header(context),
          _shopList(context),
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.pink,
                        ),
                      ),
                      Text("Search for restaurant, cuisines, and dishes"),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Icon(
                  Icons.tune,
                  color: Colors.pink,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _shopList(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, i) {
        return ShopListItem(
          shop: items[i],
        );
      },
    );
  }
}
