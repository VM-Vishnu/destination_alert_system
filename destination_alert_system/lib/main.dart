import 'package:flutter/material.dart';
import 'package:destination_alert_system/homeScreen.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await AndroidAlarmManager.initialize();   
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),),);
    

   
}

//AIzaSyDOIaVmPkYELDvrCzCiDII__Ga4yAVDeEA