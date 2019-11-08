import 'package:flutter/material.dart';


void main() => runApp(Login());

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        body: SingleChildScrollView(
          child: Column ( children: <Widget>[
            Container(
              height:  300,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/cristano.jpg')),
                  borderRadius: BorderRadius.only(

                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)
                  )
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 200,
                  ),

                  Text('“To Be The Best You Need The Best.”',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  Text('~ cr7',
                    style: TextStyle(color: Colors.white)
                    , textAlign: TextAlign.left,

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 180,
                      ),
                      Text('SIGN IN',
                          style: TextStyle(color: Colors.white)),

                      SizedBox(
                        width: 20,
                      ),
                      Text('SIGN UP',
                          style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            Container(

              margin: EdgeInsets.all(20.0),
              child: Column(


                children: <Widget>[



                  SizedBox(
                    height: 20,
                  ),

                  TextField(

                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name',
                        prefixIcon: Icon(Icons.perm_identity)
                    ),
                  ),
                  Divider(),
                  TextField(

                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email)
                    ),
                  ),
                  Divider(),
                  TextField(

                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock_open)
                    ),

                  ),
                  Divider()
                ],

              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.arrow_back),
                  SizedBox(width: 10),
                  Text('Social Login'),
                  SizedBox(width: 150),
                  FloatingActionButton(
                    backgroundColor: Colors.redAccent,
                    elevation: 0.0,
                    child: new Icon(Icons.arrow_forward),
                  )
                ],
              ),
            )
          ],
        )


      ),
      ),
    );
  }
}
