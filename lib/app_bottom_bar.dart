import 'package:flutter/material.dart';
import 'package:project_gunung/list_bottom_bar.dart';
import 'package:project_gunung/main.dart';

class AppBottomBar extends StatefulWidget {
  @override
  AppBottomBarState createState() => AppBottomBarState();
}

class AppBottomBarState extends State<AppBottomBar> {

  List<AppBottomBarItem> barItems = [
    AppBottomBarItem(icon: Icons.home, label: 'Home', isSelected: true),
    AppBottomBarItem(icon: Icons.explore, label: 'Explore', isSelected: false),
    AppBottomBarItem(icon: Icons.turned_in_not, label: 'Tag', isSelected: false),
    AppBottomBarItem(icon: Icons.person_outline,label: 'Profile', isSelected: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset.zero
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: 
        List.generate(barItems.length, (index) {
            AppBottomBarItem currentBarItem = barItems[index];

            Widget barItemWidget;

            if (currentBarItem.isSelected) {
              barItemWidget = Container(
                padding: EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: mainColor
                ),
                child: Row(
                  children: [
                    Icon(currentBarItem.icon, color: Colors.white),
                    SizedBox(width: 5),
                    Text(currentBarItem.label, style: TextStyle(color: Colors.white))
                  ]
                )
              );
            }
            else {
              barItemWidget = IconButton(
                icon: Icon(currentBarItem.icon, color: Colors.grey),
                onPressed: () {
                  setState(() {
                    barItems.forEach((AppBottomBarItem item) {
                      item.isSelected = item == currentBarItem;
                    });
                  });
                }
              );
            }

            return barItemWidget;
          }
        )
      )
    );
  }
}
