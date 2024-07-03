import 'package:flutter/material.dart';
import 'package:project_gunung/main.dart';

class DetailsBottomActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Material(
              borderRadius: BorderRadius.circular(15),
              color: mainColor,
              child: InkWell(
                highlightColor: Colors.white.withOpacity(0.2),
                splashColor:Colors.white.withOpacity(0.2),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(21),
                  child: Text('Book Now', textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)
                  )
                ),
              )
            )
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(color: mainColor, width: 2)
            ),
            child: Icon(Icons.turned_in_not, color: mainColor, size: 25)
          )
        ]
      )
    );
  }
}


