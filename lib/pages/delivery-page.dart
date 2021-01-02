import 'package:flutter/material.dart';
import 'package:foodpanda_ui/model/delivery.dart';
import 'package:foodpanda_ui/model/header-box.dart';
import 'package:foodpanda_ui/styles/common.dart';
import 'package:foodpanda_ui/widgets/delivery-list-header.dart';
import 'package:foodpanda_ui/widgets/delivery-list.dart';
import 'package:foodpanda_ui/widgets/header-box-list.dart';

class DeliveryPage extends StatelessWidget {
  final List<HeaderBox> boxItem = HeaderBox.getHeaderBoxList;
  final List<Delivery> items = Delivery.getPickUpItemList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            _header(context),
            _headerBox(context),
            _firstList(context),
            _secList(context),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
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

  Widget _headerBox(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: boxItem.length,
          itemBuilder: (context, i) {
            return HeaderBoxList(
              items: boxItem[i],
            );
          }),
    );
  }

  Widget _firstList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            "New Restaurants for the week",
            style: boldText.copyWith(
              fontSize: 25,
            ),
          ),
        ),
        Container(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, i) {
              return DeliveryListHeader(
                item: items[i],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _secList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            "All Restaurants",
            style: boldText.copyWith(
              fontSize: 25,
            ),
          ),
        ),
        Container(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, i) {
              return DeliveryList(
                item: items[i],
              );
            },
          ),
        ),
      ],
    );
  }
}
