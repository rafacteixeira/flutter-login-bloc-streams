import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(margin: EdgeInsets.only(top: 25.0)),
          loginButton()
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@example.com',
        labelText: 'E-Mail Address'
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Password'
      ),
    );
  }

  Widget loginButton() {
    return RaisedButton(
      child: Text('Login'),
      color: Colors.blue,
      onPressed: () {},
    );
  }

}