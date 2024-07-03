import 'package:flutter/material.dart';
import 'package:project_gunung/detail_page.dart';
import 'package:project_gunung/list_mountModel.dart';
import 'package:project_gunung/main.dart';

class AppMountListView extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mountItems.length,
        itemBuilder: (context, index) {
          MountModel currentMount = mountItems[index];

          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DetailsPage(currentMount))
              );
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(currentMount.path),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(currentMount.name,
                    style: TextStyle(
                      color: warna2,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Text(currentMount.location,
                    style: TextStyle(
                      color: warna3
                    )
                  )
                ]
              )
            ),
          );
        }
      )
    );
  }
}
