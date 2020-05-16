import 'package:flutter/material.dart';
import 'activity.dart';
import 'time.dart';

class EventAdder extends StatefulWidget {
  @override
  EventState createState() {
    // TODO: implement createState
    return EventState();
  }

  Activity getActivity() {
    return createState().a;
  }

}

class EventState extends State<EventAdder> {
  Activity a;
  String name;
  List<DropdownMenuItem<Time>> _dropdownStartTimes;
  List<DropdownMenuItem<Time>> _dropdownEndTimes;
  Time _selectedStartTime;
  Time _selectedEndTime;
  bool _selectedImportance;
  String error = '';

  @override
  void initState() {
    _dropdownStartTimes = buildDropDownMenuItems(Time.startTimeList);
    _dropdownEndTimes = buildDropDownMenuItems(Time.endTimeList);
    super.initState();
  }

  List<DropdownMenuItem<Time>> buildDropDownMenuItems(List times) {
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

  onChangeStartTime(Time selectedStartTime) {
    setState(() {
      _selectedStartTime = selectedStartTime;
    });
  }
  onChangeEndTime(Time selectedEndTime) {
    if (selectedEndTime.time <= _selectedStartTime.time) {
      setState((){
        error = "Inappropriate End Time!";
      });
    } else {
      setState(() {
        error = '';
        _selectedEndTime = selectedEndTime;
      });
    }
  }
  onChangeImportance(bool choice) {
    setState(() {
      _selectedImportance = choice;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'What activity is it',
                  filled: true,
                  fillColor: Colors.grey,
                  contentPadding: const EdgeInsets.all(10.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                textAlign: TextAlign.center,
                onChanged: (String input) {
                  setState((){
                    name = input;
                  });}
              ),
            ),
            Text("Start"),
            SizedBox(height: 20.0,),
            DropdownButton(
              value: _selectedStartTime,
              items: _dropdownStartTimes,
              onChanged: onChangeStartTime,
            ),
            Text("End"),
            SizedBox(height: 20.0),
            DropdownButton(
              value: _selectedEndTime,
              items: _dropdownEndTimes,
              onChanged: onChangeEndTime,
            ),
            SizedBox(height: 12),
            Text(
              error,
              style: TextStyle(color: Colors.red, fontSize: 14),
            ),
            Text("Is it important?"),
            SizedBox(height: 20.0),
            DropdownButton(
              value: _selectedImportance,
              items: <DropdownMenuItem<bool>> [
                DropdownMenuItem(
                  value: true,
                  child: Text("Yes")
                ),
                DropdownMenuItem(
                  value: false,
                  child: Text("No")
                )
              ],
              onChanged: onChangeImportance,
            ),
            RaisedButton(
              child: Text("Add"),
              onPressed:() {
                setState((){
                  a = Activity(name: name, isImportant: _selectedImportance,
                      startTime: _selectedStartTime, endTime: _selectedEndTime);
                });
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
