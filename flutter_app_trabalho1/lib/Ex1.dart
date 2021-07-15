import 'package:flutter/material.dart';

class Ex1 extends StatefulWidget {
  const Ex1({Key? key}) : super(key: key);

  @override
  _Ex1State createState() => _Ex1State();
}

class _Ex1State extends State<Ex1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose an App to Sign in"),
      ),

      body: Container(
      child: SingleChildScrollView(
      padding: EdgeInsets.all(50),

        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 30),
              child: Image.asset('images/facebook.png'),
            ),

            RaisedButton(onPressed: () {},
              child:
              Text("login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            ),

            Padding(padding: EdgeInsets.all(30),
              child: Image.asset('images/spotify.png'),
            ),

            RaisedButton(onPressed: () {},
              child:
              Text("login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),

            Padding(padding: EdgeInsets.all(30),
              child: Image.asset('images/twitter.png'),
            ),

            RaisedButton(onPressed: () {},
              child:
              Text("login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ],
    ),
      ),
    ),
    );
  }
}
