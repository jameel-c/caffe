import 'package:flutter/material.dart';

class UserRegistraion extends StatefulWidget {
  @override
  _UserRegistraionState createState() => _UserRegistraionState();
}

class _UserRegistraionState extends State<UserRegistraion> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SignUp',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      body:SingleChildScrollView(
        child:  Column(
          children: <Widget>[
            Container(
              height: mediaQueryData.size.height * 0.2,
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/cristano.jpg'),
                  radius: 60,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all( 10),

              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(
                      ),
                    ),

                    labelText:'name',
                    fillColor: Colors.black
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all( 10),

              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(
                      ),
                    ),

                    labelText:'email',
                    fillColor: Colors.black
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all( 10),

              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(
                      ),
                    ),

                    labelText:'mobile no',
                    fillColor: Colors.black
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all( 10),

              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(
                      ),
                    ),

                    labelText:'password',
                    fillColor: Colors.black
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all( 10),

              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(
                      ),
                    ),

                    labelText:'confirm password',
                    fillColor: Colors.black
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all( 10),

              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height * 0.08,
              child: RaisedButton(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text("SIGN UP"),
              ),
            )
          ],
        ),
      )

    );
  }
}
