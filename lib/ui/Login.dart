import 'package:flutter/material.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LogScreen(),
      },
    );
  }
}

class LogScreen extends StatelessWidget {
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
            child: LogForm(),
          ),
        ),
      ),
    );
  }
}

class LogForm extends StatefulWidget {
  @override
  _LogFormState createState() => _LogFormState();
}

class _LogFormState extends State<LogForm> {
 
  final _usernameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  

  double _formProgress = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearProgressIndicator(value: _formProgress),
          Text('LOGIN ', style: Theme
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
         
          
          

          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: null,
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}

