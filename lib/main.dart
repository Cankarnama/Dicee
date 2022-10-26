import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(

        backgroundColor:Colors.red,


        appBar: AppBar(
          //elevation: 20,
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              'Dicee',
            ),
          ),
        ),

        body: Dicepage()),
  ));
}

class Dicepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(

        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
         ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
