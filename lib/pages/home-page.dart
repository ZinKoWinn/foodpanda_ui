import 'package:flutter/material.dart';
import 'package:foodpanda_ui/pages/delivery-page.dart';
import 'package:foodpanda_ui/pages/pickup-page.dart';
import 'package:foodpanda_ui/pages/shop-page.dart';
import 'package:foodpanda_ui/styles/common.dart';
import 'package:foodpanda_ui/widgets/mydrawer.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _tabController;
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey();
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  List<Widget> items = [DeliveryPage(), PickUpPage(), ShopPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: myAppBar(context),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.pink,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.pink,
          labelStyle: boldText.copyWith(fontSize: 17, color: Colors.pink),
          unselectedLabelColor: Colors.black87,
          tabs: MyView.values
              .map(
                (e) => Tab(
                  text: e.tabBarLabel,
                ),
              )
              .toList(),
        ),
      ),
      drawer: MyDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: items,
      ),
    );
  }

  Widget myAppBar(BuildContext context) {
    return Card(
      elevation: 4,
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.pink,
            ),
            onPressed: () => _globalKey.currentState.openDrawer(),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Current Location", style: appBarTitle),
              Text(
                "268 Aung Myittar Rd",
                style: normalText.copyWith(fontSize: 13),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.pink,
            ),
            onPressed: null,
          )
        ],
      ),
    );
  }
}

enum MyView { Delivery, PickUp, Shop }

extension MyScreenView on MyView {
  String get tabBarLabel {
    switch (this) {
      case MyView.Delivery:
        return "Delivery";
        break;
      case MyView.PickUp:
        return "Pick Up";
        break;
      case MyView.Shop:
        return "Shop";
        break;
      default:
        return null;
    }
  }
}
