import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart',),backgroundColor: Colors.redAccent,centerTitle: true,),

       body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20)),
          Expanded(child: ListView.builder(itemCount: 10,itemBuilder: (BuildContext context,int index){
            return Container(
              padding: EdgeInsets.all(6),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        shape: BoxShape.rectangle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new AssetImage('images/burger.jpg')
                        )

                    ) ,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Text('Buger'),
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Text('price: 150',),
                        Row(children: <Widget>[
                          new Text('Qty:'),

                          new Padding(padding: EdgeInsets.only(left: 12)) ,

                           new Container(
                            height:30,
                            width: 30,
                            child: new FloatingActionButton(
                              child: new Icon(Icons.add, color: Colors.black,),
                              backgroundColor: Colors.white,),
                          ),

                          new Text('1',
                              style: new TextStyle(fontSize: 30.0)),

                          new Container(

                            height:30,
                            width: 30,
                            child: new FloatingActionButton(
                              child: new Icon(
                                  const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                                  color: Colors.black),
                              backgroundColor: Colors.white,),
                          ),
                        ],),


                      ],
                    ),
                  )


                ],
              ),
            );

          })),

          Container(

            color: Colors.redAccent,
            height: 30,
            child: Row(
              children: <Widget>[
                Text('TOTAL PAYABLE AMOUNT'),
                Spacer(),
                Text('456'),
                Padding(padding: EdgeInsets.only(right: 20)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Spacer(),
                Text('Continue'),
                Padding(padding: EdgeInsets.only(right: 10)),
                Icon(Icons.arrow_forward),
                Padding(padding: EdgeInsets.only(right: 10)),
              ],
            ),
         ),

          Padding( padding: EdgeInsets.only(bottom: 50),),


        ],
      ),
    );
  }
}
