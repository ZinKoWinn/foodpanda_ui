import 'package:flutter/material.dart';
import 'package:foodpanda_ui/styles/common.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.pink,
            child: Padding(
             padding: EdgeInsets.only(left: 10,top:30,bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Text("Z",style: boldText.copyWith(fontSize:35, color:Colors.pink),),
                    backgroundColor: Colors.white,
                  ),
                  Text("Zin Ko Winn",style: boldText.copyWith(color: Colors.white),),
                ],
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          _navItem(
            context,
            "Favourite",
            icon: Icons.favorite_border,
          ),
          _navItem(
            context,
            "Orders",
            icon: Icons.line_style_outlined,
          ),
          _navItem(
            context,
            "Profile",
            icon: Icons.person_outline,
          ),
          _navItem(
            context,
            "Address",
            icon: Icons.location_on_outlined,
          ),
          _navItem(
            context,
            "Vouchers",
            icon: Icons.line_style_outlined,
          ),
          _navItem(
            context,
            "Help Center",
            icon: Icons.help_outline,
          ),
          _navItem(
            context,
            "Invite Friends",
            icon: Icons.card_giftcard_outlined,
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    child: Text(
                      "Settings",
                      style: normalText.copyWith(color: Colors.black),
                    ),
                    onPressed: null,
                  ),
                  TextButton(
                    child: Text(
                      "Terms & Conditions / Privacy",
                      style: normalText.copyWith(color: Colors.black),
                    ),
                    onPressed: null,
                  ),
                  TextButton(
                    child: Text(
                      "Log Out",
                      style: normalText.copyWith(color: Colors.black),
                    ),
                    onPressed: null,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

Widget _navItem(BuildContext context, String name,
    {IconData icon, Function onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: ListTile(
      leading: Icon(icon,color: Colors.pink,),
      title: Text(
        name,
        style: normalText.copyWith(color: Colors.black),
      ),
    ),
  );
}
