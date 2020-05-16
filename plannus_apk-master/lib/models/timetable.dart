import 'package:flutter/material.dart';
import 'activity.dart';
import 'eventadder.dart';
import 'time.dart';

void main() => runApp(MaterialApp(
  home: TimeTable(),
));

class TimeTable extends StatefulWidget {
  @override
  State<TimeTable> createState() {
    // TODO: implement createState
    return TimeTableState();
  }
}

class TimeTableState extends State<TimeTable> {
  List<String> time = <String> [
    "0800-0900", "0900-1000", "1000-1100", "1100-1200", "1200-1300", "1300-1400",
    "1400-1500", "1500-1600", "1600-1700", "1700-1800", "1800-1900", "1900-2000"
  ];
  List<Time> startTimes = Time.startTimeList;
  List<Activity> activity = <Activity> [];

  void add(Activity a) {
    setState((){
      activity.add(a);
    });
  }

  void remove(Time start, Time end) {
    setState(() {
      for (Activity act in activity) {
        if (act.startTime.time == start.time && act.endTime.time == end.time) {
          activity.remove(act);
        }
      }
    });
  }

  Activity finder(int timing) {
    Time t = startTimes[timing];
    for (Activity a in activity) {
      if (a.startTime.time <= t.time && a.endTime.time >= (t.time + 100)) {
        return a;
      }
    }
    return Activity.noActivity(t, Time(time: t.time + 100));
  }

  Widget row(int timing) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          color: Colors.cyan,
          child: Text(time[timing]),
        ),
        finder(timing).activityWidget(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            row(0),
            row(1),
            row(2),
            row(3),
            row(4),
            row(5),
            row(6),
            row(7),
            row(8),
            row(9),
            row(10),
            row(11),
          ]
      ),
      floatingActionButton: Builder(
          builder: (context) {
            return new FloatingActionButton(
              child: Text("Add"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => EventAdder())
                );
              },
            );
          }
      )
    );
  }

  static List<DropdownMenuItem<Time>> buildDropDownMenuItems(List times) {
    List<DropdownMenuItem<Time>> items = List();
    for (Time t in times) {
      items.add(
        DropdownMenuItem(
          value: t,
          child: Text(t.toString()),
        ),
      );
    }
    return items;
  }
}
