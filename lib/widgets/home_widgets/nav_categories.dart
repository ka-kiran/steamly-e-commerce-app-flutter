import 'package:flutter/material.dart';
import 'package:steamly_app/utils/constants.dart';

// navigation section below the search box widget
class NavigationBelowSearch extends StatefulWidget {
  const NavigationBelowSearch({Key? key}) : super(key: key);

  @override
  _NavigationBelowSearchState createState() => _NavigationBelowSearchState();
}

class _NavigationBelowSearchState extends State<NavigationBelowSearch> {
  List<String> navSection = [
    "Popular",
    "New Arrivals",
    "All Categories",
    "Offers",
    "Luxury",
  ];

  int selectedIndex = 0; // microinteraction nav section index
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // scroll towards horizontal direction
        itemCount: navSection.length,
        itemBuilder: (context, index) => buildNavSection(index),
      ),
    );
  }

// widget to build navigation section below search box
  Widget buildNavSection(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        // Container widget with box decorated microinteraction nav section
        child: Container(
          margin: EdgeInsets.only(left: 12.0),
          height: 20.0,
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            navSection[index], // pass navigation bar list
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12.0,
              color: selectedIndex == index // set the selected index color
                  ? kPrimaryTextColor
                  : kSecondaryTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
