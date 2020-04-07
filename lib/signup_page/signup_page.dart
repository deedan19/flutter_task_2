import 'package:flutter/material.dart';

class CreateAcc extends StatefulWidget {
  @override
  _CreateAccState createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(

              width: 100.0,
              height: 100.0,
              child: Image(
                image: AssetImage('assets/icon.jpg',),
                fit: BoxFit.cover,
              ),
            ),
            Form(
              child: Column(

                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'First Name'
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Last Name'
                    ),
                    keyboardType: TextInputType.text,

                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Email'
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Password'
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  )
                ],
              ),
            ),
            RaisedButton( onPressed: (){},
              child: Text('Sign Up'),
              color: Colors.lightBlue,
              padding: EdgeInsets.all(20.0),
            ),
            GestureDetector(
                child: Text("Already have an account? Login here",
                    style: TextStyle(
                        decoration: TextDecoration.underline, color: Colors.greenAccent)),
                onTap: () {
                  Navigator.pop(context);
                }
            )
          ],
        ),
      ),
    );
  }
}
