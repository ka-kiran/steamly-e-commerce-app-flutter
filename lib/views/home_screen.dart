import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/common_components/bottom_nav.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/widgets/drawer.dart';
import 'package:steamly_app/widgets/home_widgets/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _drawerKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: buildAppBar(), // method for appBar
        body: HomePageBody(),
        drawer: MyDrawer(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      key: _drawerKey,
      elevation: 0,
      leading: Builder(
        builder: (BuildContext context) => IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            width: 50.0,
          ),
          onPressed: () => {Scaffold.of(context).openDrawer()},
          //onPressed: () => {_drawerKey.currentState!.openDrawer()},
          
        
        ),
      ),
      title: Text(
        "Steamly",
        style: TextStyle(
            fontFamily: GoogleFonts.cormorantGaramond().fontFamily,
            fontSize: 22.0,
            color: Colors.black,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
