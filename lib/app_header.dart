import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://avatars.githubusercontent.com/u/172017689?v=4',
              width: 50,
              height: 50,
              fit: BoxFit.cover
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text('Selamat datang githubian',
                style: TextStyle(
                    color: Colors.black, 
                    fontWeight: FontWeight.bold
                )
              ),
              Text('ikan sepat ikan tongkol, ENGKOL',
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 12
                )
              )
            ]
          )
        ],
      )
    );
  }
}
