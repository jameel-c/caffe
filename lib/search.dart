import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Search',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),
        ),
        elevation: 5.0,
      ),
      body: new Column(
        children: <Widget>[

          Container(
            color:Colors.redAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: new ListTile(
                  leading: new Icon(Icons.search,color: Colors.red,),
                  trailing: new Icon(Icons.cancel),
                  title: new TextField(
                   // controller: controller,
                    decoration: new InputDecoration(
                      hintText: 'Search',border: InputBorder.none
                    ),
                  ),
                ),
                
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(child: new ListView.builder(itemCount: 10,itemBuilder: (BuildContext context,int index ){
            return Container(

              child: Column(
                children: <Widget>[
                  new ListTile(


                    leading: new CircleAvatar(
                      backgroundImage: AssetImage('images/cristano.jpg'),
                      radius: 30,
                    ),
                    title: new Text("burger"),
                  ),
                  new SizedBox(height: 4,)
                ],
              ),

            );

          }) ),

        ],
      ),
    );
  }
}
