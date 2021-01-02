import 'package:flutter/material.dart';
import 'package:foodpanda_ui/model/delivery.dart';
import 'package:foodpanda_ui/styles/common.dart';

class DeliveryList extends StatelessWidget {
  final Delivery item;
  const DeliveryList({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _content(context),
            Row(
              children: [
                Text(
                  item.name,
                  style: boldText.copyWith(fontSize: 15),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.blue[600],
                      size: 20,
                    ),
                    Text(
                      "3.8",
                      style: boldText.copyWith(fontSize: 13),
                    ),
                    Text(
                      "(67)",
                      style: normalText.copyWith(fontSize: 13),
                    )
                  ],
                ),
              ],
            ),
            Text(
              item.name,
              style: normalText,
            ),
            Text(
              item.far,
              style: boldText.copyWith(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(item.imageUrl),
              fit: BoxFit.cover,
            )),
          ),
          Positioned(
            top: 10,
            left: 0,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(
                item.discount,
                style: normalText.copyWith(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: 0,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(
                item.delivery,
                style: normalText.copyWith(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                item.time,
                style: boldText.copyWith(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
