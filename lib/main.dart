import 'package:flutter/material.dart';
import 'package:fluttertask/signup_page/signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task 2',
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
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
                  ),
                ],

              ),
            ),
            RaisedButton( onPressed: (){},
              child: Text('Login'),
              color: Colors.lightBlue,
              padding: EdgeInsets.all(20.0),

            ),
            GestureDetector(
                child: Text("Don't have an account? Click here",
                    style: TextStyle(
                        decoration: TextDecoration.underline, color: Colors.greenAccent)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateAcc()),
                  );
                }
            )
          ],

        )
    );
  }
}
