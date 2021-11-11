import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/utils/translator.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  LanguagesEnum selectedLanguage = LanguagesEnum.English;

  String? _groupValue;
  var val;
  @override
  Widget build(BuildContext context) {
    final imagePath = "assets/images/shirnkhu.webp";
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
                  "Shrinkhu",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text("pandu@gmail.com",
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
                Icons.change_circle,
                color: Colors.black,
              ),
              onTap: () {
                showModalBottomSheet(
                    elevation: 1.0,
                    isDismissible: true,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: ListView(
                          children: [
                            ListTile(
                              title: Text("English"),
                              leading: Radio(
                                  value: "en",
                                  groupValue: _groupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _groupValue = value as String?;
                                      val = value.toString();
                                      print(val);
                                      var locale = Locale("en", "US");
                                      Get.updateLocale(locale);
                                      Navigator.pop(context);
                                      // Navigator.of(context)
                                      //     .pushNamedAndRemoveUntil(
                                      //         MyRoutes.homeRoute,
                                      //         ModalRoute.withName(
                                      //             MyRoutes.homeRoute));
                                    });
                                  }),
                            ),
                            ListTile(
                              title: Text("Nepali"),
                              leading: Radio(
                                  value: "hi",
                                  groupValue: _groupValue,
                                  onChanged: (value) {
                                    _groupValue = value as String?;
                                    val = value.toString();
                                    var locale = Locale("hi", "HI");
                                    Get.updateLocale(locale);
                                    Navigator.pop(context);
                                  }),
                            ),
                          ],
                        ),
                      );
                    });
              },
              title: Text(
                "Language",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
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
