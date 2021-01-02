import 'package:flutter/material.dart';
import 'package:foodpanda_ui/model/header-box.dart';

class HeaderBoxList extends StatelessWidget {

  final HeaderBox items;

  const HeaderBoxList({Key key,this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width /5.1,
      height: MediaQuery.of(context).size.height / 3,
      margin: EdgeInsets.symmetric(horizontal: 1, vertical: 4),
      decoration: BoxDecoration(
        //color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Image(
            image: NetworkImage(items.imageUrl),
            fit: BoxFit.cover,
          )),
    );
  }
}