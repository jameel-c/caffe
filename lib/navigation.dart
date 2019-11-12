import 'package:flutter/material.dart';
import 'package:sample_work/profile.dart';
import 'package:sample_work/search.dart';

import 'login.dart';
import 'menu.dart';

class Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100,),
          RaisedButton(

            child:  new Text('menu'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Menu()),
              );
            },
          ),
          RaisedButton(

            child:  new Text('profile'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          RaisedButton(

            child:  new Text('Login'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
          RaisedButton(

            child:  new Text('search'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Search()),
              );
            },
          ),
        ],
      ),
    );
  }
}
