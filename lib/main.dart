import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.red,
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

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int l = 1;
  int r = 1;
  void changedicenumber() {
    setState(() {
      r = Random().nextInt(6) + 1;
      l = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    changedicenumber;
                  },
                );
              },
              child: Image(
                image: AssetImage('images/dice$l.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                // the set state is used to mark the variable that is placed in it as
                //dirty ,everywhere it goes and is seen
                setState(
                  () {
                    changedicenumber;
                  },
                );
              },
              child: Image(
                image: AssetImage('images/dice$l.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
