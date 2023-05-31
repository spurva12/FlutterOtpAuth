import 'package:flutter/material.dart';

import '../Utils/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Welcome"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text("Phone no",style: TextStyle(color: Colors.lightBlue, fontSize: 21, fontWeight: FontWeight.w500),),
                        RoundedButton(
                          colour: Colors.lightBlueAccent,
                          title: 'Log In',
                          onPressed: () {
                            Navigator.pushNamed(context, 'login_screen');
                          },
                        ),
                       /* RoundedButton(
                            colour: Colors.blueAccent,
                            title: 'Register',
                            onPressed: () {
                              Navigator.pushNamed(context, 'registration_screen');
                            }),*/
                      ]),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text("Email Id",style: TextStyle(color: Colors.lightBlue, fontSize: 21, fontWeight: FontWeight.w500),),
                        RoundedButton(
                          colour: Colors.lightBlueAccent,
                          title: 'Log In',
                          onPressed: () {
                            Navigator.pushNamed(context, 'login_screen');
                          },
                        ),
                        RoundedButton(
                            colour: Colors.blueAccent,
                            title: 'Register',
                            onPressed: () {
                              Navigator.pushNamed(context, 'registration_screen');
                            }),
                      ]),
                ),
              ),
            ],
          ),
        ));
  }
}