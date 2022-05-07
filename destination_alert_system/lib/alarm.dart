import 'package:destination_alert_system/distanceCalcullator.dart';
import 'package:flutter/material.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:geocode/geocode.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ALarm extends StatefulWidget {
  Coordinates sourceCordinates;
  Coordinates DestinationCoordinates;
  
  ALarm(this.sourceCordinates,this.DestinationCoordinates);
  @override
  State<ALarm> createState() => _ALarmState();
}
DistanceCalculator dc = DistanceCalculator();

class _ALarmState extends State<ALarm> {
  late LatLng dPosition;
  late LatLng sPosition;
  int i = 1;
  void callAlarm() async {
  double meter = 0;
  await dc.distance(sPosition,dPosition).then((value) => meter = value);
  print(meter);
  if (meter < 1000.0) {
    var date = DateTime.now();
    FlutterAlarmClock.createAlarm(date.hour, date.minute + 1);
  }
  else if(meter<6000.0)
  {
    var date = DateTime.now();
    FlutterAlarmClock.createAlarm(date.hour, date.minute + 3);
  }
}

  @override
  void initState() {
    super.initState();
    sPosition=LatLng(widget.sourceCordinates.latitude!, widget.sourceCordinates.longitude!);
    dPosition=LatLng(widget.DestinationCoordinates.latitude!,widget.DestinationCoordinates.longitude!);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA2B38B),
      body: Center(
        child: TextButton(
          child: const Text("Set Alarm"),
          onPressed: () async {
            print("hello");
                await AndroidAlarmManager.periodic(
                const Duration(minutes: 15), 1, callAlarm);
                Timer.periodic(const Duration(minutes: 10), (timer) { 
                    callAlarm();
                });
          },
        ),
      ),
    );
  }
}
