import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('0800 - 0900')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('0900 - 1000')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('1000 - 1100')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('1100 - 1200')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('1200 - 1300')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('1300 - 1400')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('1400 - 1500')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('1500 - 1600')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('1600 - 1700')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('1700 - 1800')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('1800 - 1900')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    child: Text('1900 - 2000')
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white70,
                      child: Text('Activity', textAlign: TextAlign.center)
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }
}