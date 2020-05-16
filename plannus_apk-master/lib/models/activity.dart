import 'package:flutter/material.dart';
import 'time.dart';

class Activity {
  final String name;
  bool isImportant = false;
  final Time startTime; //24 hour
  final Time endTime;   //24 hour
  Activity({this.name, this.isImportant, this.startTime, this.endTime});

  static Activity noActivity(Time start, Time end) {
    return new Activity(
      name: "No Activity",
      isImportant: false,
      startTime: start,
      endTime: end,
    );
  }

  Widget activityWidget() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10.0),
        color: isImportant ? Colors.red : Colors.white70,
        child: Text(
          name,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
