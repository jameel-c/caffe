import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _index = 0;

  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        backgroundColor: Colors.redAccent,

        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.favorite_border,color: Colors.white,),
//            title: Text('School'),
//          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text('profile'),
          ),
        ],

      ),
    );
  }
}
