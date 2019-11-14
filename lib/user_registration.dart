import 'package:flutter/material.dart';

class UserRegistraion extends StatefulWidget {
  @override
  _UserRegistraionState createState() => _UserRegistraionState();
}

class _UserRegistraionState extends State<UserRegistraion> {
  @override
  Widget _textfield(String text){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              //borderRadius: new BorderRadius.circular(25.0),
              borderSide: new BorderSide(
              ),
            ),

            labelText: text,
            fillColor: Colors.black
        ),
      ),
    );
  }
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
            _textfield('email'),
            _textfield('password'),
            _textfield('mobile no'),
            _textfield('password'),
            _textfield('confirm password'),

            Container(
              margin: EdgeInsets.all( 10),

              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height * 0.08,
              child: RaisedButton(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
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
