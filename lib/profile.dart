import 'package:flutter/material.dart';


//void main() => runApp(Sample());


class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    return MaterialApp(

      home: Profile(),
    );
  }
}
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      //backgroundColor: Colors.lightBlue,
        body: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              Container(
                height: height * 0.4,
                decoration: BoxDecoration(
                  gradient: new LinearGradient(

                      colors: [Colors.redAccent,Colors.white]),
                ),

                child: Center(

                  child: Container(
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: <Widget>[


                        CircleAvatar(
                          backgroundImage: AssetImage('images/cristano.jpg'),
                          radius: 60,
                        ),

//                        Container(
//
//                          margin: EdgeInsets.only(top: 40),
//                          child: Text("Cristiano Ronaldo",
//                            textAlign: TextAlign.center,
//                          ),
//
//                        ),
                      ],
                    ),
                  ),
                ),


              ),

              Container(

                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text('Account Settings'),
                        trailing: Icon(Icons.navigate_next),
                      ),
                      Divider(),
                      ListTile(
                        title: Text('Transactions'),
                        trailing: Icon(Icons.navigate_next),
                      ),
                      Divider(),
                      ListTile(
                        title: Text('Contact Us'),
                        trailing: Icon(Icons.navigate_next),
                      ),
                      Divider(),
                      ListTile(
                        title: Text('About App'),
                        trailing: Icon(Icons.navigate_next),
                      ),
                      Divider(),
                      ListTile(
                        title: Text('Logout'),
                        trailing: Icon(Icons.navigate_next),
                      ),
                      Divider(),

                    ],
                  )
              ),

            ],
          )
        )

    );
  }
}

//

