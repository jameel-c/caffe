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
          Container(
            child:
            Expanded(child: ListView.builder(itemCount:  10, padding: const EdgeInsets.all(0.0),itemBuilder: (BuildContext context,int index){
             return Container(
               margin: EdgeInsets.all(10.0),
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/burger.jpg')),
                  borderRadius: BorderRadius.circular(12)
              ),
              child:Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: 12,),
                  Row(
                    children: <Widget>[
                      new  SizedBox(width: 14,),
                      new  Text("12.2",style: TextStyle(color: Colors.white,backgroundColor: Colors.redAccent)),
                    ],
                  ),
                  SizedBox(height: 190,),
                  Row(
                    children: <Widget>[
                      new  SizedBox(width: 14,),
                      Text('Burger',style: TextStyle(color: Colors.white),),
                    ],
                  )

                ],
              ),
            );
          })),
          )
        ],
      )




    );
  }
}
