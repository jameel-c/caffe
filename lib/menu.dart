import 'package:flutter/material.dart';



class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Menu',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Container(

            height: 50,
            child:Column(
              children: <Widget>[

                new Container(

                  child: Expanded(child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 10,itemBuilder: (BuildContext context,int index){
                    return Container(
                        width: 100,

                        child:Card(
                            color:Colors.redAccent,
                            child: Center(
                              child: Text("$index"
                                ,style: TextStyle(
                                    color: Colors.white,

                                    fontWeight: FontWeight.bold,
                                    fontSize: 30
                                ),),
                            )
                        )
                    );
                  })

                  ),
                ),

              ],
            ),

          ),
          SizedBox(height: 20,),

          Center(
            child: Text('SANDWICHES'),
          ),
          SizedBox(height: 20,),
          Expanded(child: ListView.builder(itemCount:  10, padding: const EdgeInsets.all(0.0),itemBuilder: (BuildContext context,int index){
             return Container(
               padding: EdgeInsets.all(6),
               child: Row(
                 children: <Widget>[
                   Container(
                     width: 60.0,
                     height: 60.0,
                     decoration: new BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                         shape: BoxShape.rectangle,
                         image: new DecorationImage(
                             fit: BoxFit.fill,
                             image: new AssetImage('images/burger.jpg')
                         )
                         
                     ) ,
                   ),
                   Padding(padding: EdgeInsets.only(left: 12),),
                   Container(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Text('ifthar',),
                         Padding(padding: EdgeInsets.only(top: 4)),
                         Text('Buger'),
                         Padding(padding: EdgeInsets.only(top: 4)),
                         Text('150 per person',)
                       ],
                     ),
                   ),
                 ],
               ),
             );
          })),
        ],
      )




    );
  }
}
