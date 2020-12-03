import 'package:flutter/material.dart';

void main() => runApp(Profile());

class Proflile extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(Text('Proflie'
          ),
        ),
        body: Row(
          children: <Widget>[
            Container(
              child: image.asset("assets/user.jpeg",
              fit:BoxFit.contain),

            ),
          ],
          <Widget>[
            
          ]
        )
        
        ,
    );
  }
}