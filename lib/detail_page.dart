import 'package:flutter/material.dart';
import 'package:project_gunung/detail_bottom_bar.dart';
import 'package:project_gunung/detail_rating_bar.dart';
import 'package:project_gunung/list_mountModel.dart';
// ignore: must_be_immutable
class DetailsPage extends StatelessWidget{

  MountModel mount;
  
  DetailsPage(this.mount);

  @override
  Widget build(BuildContext context) {
    var selectedItem = mount;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(selectedItem.path),
                      fit: BoxFit.cover
                    )
                  )
                ),
                Positioned.fill(
                  child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7)
                      ],
                      begin: Alignment.center, end: Alignment.bottomCenter
                    )
                  )
                )
              ),
              Positioned(
                bottom: 30, left: 30, right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(selectedItem.name,
                      style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)    
                    ),
                    Text(selectedItem.location,
                      style: TextStyle(color: Colors.white, fontSize: 20)    
                    ),
                  ]
                )
              ),
               AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    iconTheme: IconThemeData(color: Colors.white),
                    title: Center(
                      child: Icon(Icons.terrain, color: Colors.white, size: 40)
                    ),
                    actions: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(Icons.pending,color: Colors.white, size: 30)
                      )
                    ]
                  )
                ],
              )
            ),
          Expanded(
            child: Column(
              children: [
                DetailsRatingBar(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:20, right:20, bottom: 20),
                        child: Text('About ${selectedItem.name}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                         )
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, bottom:20),
                        child: Text('${selectedItem.description}', style: TextStyle(fontSize: 12)),
                      )
                    ]
                  ),
                ),
                DetailsBottomActions()
              ],
            ),
          )
        ],
      )
    );
  }
}
// ignore: must_be_immutable