import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        appBar: AppBar(
         centerTitle: true,
         title: Text('Item',style: TextStyle(color: Colors.white),),
         backgroundColor: Colors.red,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: mediaQueryData.size.height * 0.25,
              width: mediaQueryData.size.width,
              child: new Image.asset('images/burger.jpg',fit: BoxFit.cover)
            ),
            Container(
                height: mediaQueryData.size.height * 0.05,
                margin: EdgeInsets.only(left: 20,top: 20),
                child: Text('Burger',style: TextStyle(fontSize: 20),)),
            Container(
                width: mediaQueryData.size.width,
                color: Colors.black12,
                height: mediaQueryData.size.height * 0.05,
                child: Text('Special Instructions')),
            Container(
              margin: EdgeInsets.only(left: 20,),

              height: mediaQueryData.size.height * 0.1,
              child: TextField(
                decoration: new InputDecoration.collapsed(
                    hintText: 'Add a note'
                ),

              ),
            ),
            Divider(),

            Container(
              height: mediaQueryData.size.height * 0.2,
              child:  Row(
                  children: <Widget>[

                  new SizedBox(width: mediaQueryData.size.width * 0.3,),

                  new Container(
                    height:50,
                    width: 50,
                    child: new FloatingActionButton(
                      child: new Icon(Icons.add, color: Colors.black,),
                      backgroundColor: Colors.white,),
                  ),

                  new Text('1',
                      style: new TextStyle(fontSize: 30.0)),

                  new Container(

                    height:50,
                    width: 50,
                    child: new FloatingActionButton(
                      child: new Icon(
                          const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                          color: Colors.black),
                      backgroundColor: Colors.white,),
                  ),
                ],)
              ),
            Container(
              height: mediaQueryData.size.height * 0.08,
              color: Colors.redAccent,
              padding: EdgeInsets.only(bottom: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Text('Add 1 to cart'),
                  Spacer(),
                  Text('545'),
                  Padding(padding: EdgeInsets.only(right: 10)),
                ],
              ),
              
            ),



          ],

        ),

    );
  }
}
