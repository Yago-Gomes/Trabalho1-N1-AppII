import 'package:flutter/material.dart';

class Ex2 extends StatefulWidget {
  const Ex2({Key? key}) : super(key: key);

  @override
  _Ex2State createState() => _Ex2State();
}

class _Ex2State extends State<Ex2> {

  TextEditingController _controllerUser = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();
  bool _selectvalue = false;
  bool _valuecheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in Spotify"),
        backgroundColor: Colors.lightGreen,
      ),

      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),

          child: Column(

            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Image.asset("images/spotify2.png"),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Type your username and password to sign in Spotify",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),

              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "Username or Email"),
                style: TextStyle(fontSize: 18),
                controller: _controllerUser,
              ),

              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "Password"),
                style: TextStyle(fontSize: 18),
                controller: _controllerPass,
                obscureText: true,
              ),

             CheckboxListTile(
                title: Text("stay signed in "),
                value: _selectvalue,
                onChanged: (_valuecheck) {
                  setState(() {
                    if (_selectvalue) {
                      _selectvalue = false;
                    } else {
                      _selectvalue = true;
                    }
                  }

                  );
                }),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                    color: Colors.lightGreen,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),

                    child: Text("Login",
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {}),
              ),

              Padding(
                padding: EdgeInsets.only(top: 30),
                child: RaisedButton(
                    color: Colors.black38,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),

                    child: Text("Forgot your password?",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                    ),
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
