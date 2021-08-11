import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:steamly_app/utils/constants.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imagePath = "assets/images/girl_profile.jpg";
    return Drawer(
      child: Container(
        color: kPrimaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              // this is drawer header
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: kPrimaryColor),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Assu",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text("assu@gmail.com",
                    style: TextStyle(color: Colors.black)),
                currentAccountPicture: CircleAvatar(
                    radius: 25.0, backgroundImage: AssetImage(imagePath)),
              ),
            ),
            Divider(
              height: 0.0,
              thickness: 3.0,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text(
                "Log Out",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
