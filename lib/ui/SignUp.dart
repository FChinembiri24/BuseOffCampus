import 'package:flutter/material.dart';

void main() => runApp(SignUpApp());

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SignUpScreen(),
      },
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buse OffCampus'
        ) ,
        ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SizedBox(
          width: 400,
          child: Card(
            child: SignUpForm(),
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _usernameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _conTextController = TextEditingController();

  double _formProgress = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearProgressIndicator(value: _formProgress),
          Text('Sign Up', style: Theme
              .of(context)
              .textTheme
              .headline4),
               Padding(
            padding: EdgeInsets.all(3.0),
            child: TextFormField(
              controller: _usernameTextController,
              decoration: InputDecoration(hintText: 'Username'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(3.0),
            child: TextFormField(
              controller: _firstNameTextController,
              decoration: InputDecoration(hintText: 'First name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(3.0),
            child: TextFormField(
              controller: _lastNameTextController,
              decoration: InputDecoration(hintText: 'Last name'),
            ),
          ),
         
          Padding(
            padding: EdgeInsets.all(3.0),
            child: TextFormField(
              controller: _emailTextController,
              decoration: InputDecoration(hintText: 'Email'),
            ),
          ),
           Padding(
            padding: EdgeInsets.all(3.0),
            child: TextFormField(
              obscureText:true,
              controller: _passwordTextController,
              decoration: InputDecoration(hintText: 'password'),
            ),
          ),
           Padding(
            padding: EdgeInsets.all(3.0),
            child: TextFormField(
              obscureText:true,
              controller: _conTextController,
              decoration: InputDecoration(hintText: 'Confirm password'),
            ),
          ),
          

          RaisedButton(
            color: Colors.yellow,
            textColor: Colors.white,
            onPressed: null,
            child: Text('Sign up'),
          ),
        ],
      ),
    );
  }
}
