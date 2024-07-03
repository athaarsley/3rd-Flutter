

import 'package:flutter/material.dart';
import 'package:project_gunung/app_bottom_bar.dart';
import 'package:project_gunung/app_category.dart';
import 'package:project_gunung/app_header.dart';
import 'package:project_gunung/app_mount_list_view.dart';
import 'package:project_gunung/app_search.dart';

final Color mainColor = Color.fromARGB(255, 12, 165, 236);
final Color warna2 = Color.fromRGBO(0, 255, 64, 1);
final Color warna3 = Color.fromRGBO(0, 0, 0, 1);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: SplashPage() // SplashPage()
    )
  );
}

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MountsApp()));
    });

    return Container(
      color: mainColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Icon(Icons.terrain, color: Colors.white, size: 90),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 80),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white)
              )
            )
          )
        ],
      )
    );
  }
}

class MountsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Icon(
            Icons.badge, 
            color: mainColor, 
            size: 40
          )
        ),
        actions: [
          SizedBox(width: 40, height: 40)
        ],
        iconTheme: IconThemeData(color: mainColor)
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(30),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: Icon(Icons.terrain, color: Colors.white, size: 80)
        )
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(),
          AppSearch(),
          Expanded(
            child: AppMountListView()
          ),
          AppCategoryList(),
          AppBottomBar()
        ],
      )
    );
  }
}
