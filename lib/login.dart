import 'package:flutter/material.dart';
import 'package:sample_work/home.dart';
import 'package:sample_work/profile.dart';
import 'package:sample_work/user_registration.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
          child: Column (crossAxisAlignment : CrossAxisAlignment.start, children: <Widget>[
            Container(
              height: mediaQueryData.size.height  * .35 ,//MediaQuery.of(context).size.height/ 5,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/burger.jpg')),
                      borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  SizedBox(

                    height: mediaQueryData.size.height * 0.23,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20)
                      ),


                      Text('“stay hungry stay foolish.”',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,maxLines: 2,

                      ),
                    ],

                  ),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20,top: 40)
                      ),

                      Text('~  steve jobs',
                        style: TextStyle(color: Colors.white)
                        , textAlign: TextAlign.left,

                      ),

                    ],
                  ),


//                  SizedBox(
//                    height: 20,
//                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: mediaQueryData.size.width * 0.5,
                      ),
                      Text('SIGN IN',
                          style: TextStyle(color: Colors.white)),

                      SizedBox(
                        width: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context) => UserRegistraion()
                          ));
                        },
                        child: new Text('SIGN UP',
                          style: TextStyle(color: Colors.white,decoration: TextDecoration.underline),

                        ),
                      )


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

//                  TextField(
//
//                    decoration: InputDecoration(
//                        border: InputBorder.none,
//                        hintText: 'Name',
//                        prefixIcon: Icon(Icons.perm_identity)
//                    ),
//                  ),
//                  Divider(),
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
              margin: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: <Widget>[
//                  Icon(Icons.arrow_back),
//                  SizedBox(width: 10),
//                  Text('Social Login'),
                  Spacer(),

                  FloatingActionButton(

                    backgroundColor: Colors.redAccent,
                    elevation: 0.0,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) => Home()
                      ));
                    },
                    child: new Icon(Icons.arrow_forward),
                  ),

                ],
              ),
            )
          ],
          )


      ),
    );
  }
}
