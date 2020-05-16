class Time {
  final int time;
  Time({this.time});

  @override
  String toString() {
    return time < 1000
        ? "0" + time.toString()
        : time.toString();
  }

  static List<Time> startTimeList = <Time> [
    Time(time: 0800), Time(time: 0900), Time(time: 1000), Time(time: 1100),
    Time(time: 1200), Time(time: 1300), Time(time: 1400), Time(time: 1500),
    Time(time: 1600), Time(time: 1700), Time(time: 1800), Time(time: 1900),
  ];

  static List<Time> endTimeList = <Time> [
    Time(time: 0900), Time(time: 1000), Time(time: 1100), Time(time: 1200),
    Time(time: 1300), Time(time: 1400), Time(time: 1500), Time(time: 1600),
    Time(time: 1700), Time(time: 1800), Time(time: 1900), Time(time: 2000),
  ];
}